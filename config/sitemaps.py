import datetime
from calendar import timegm
from functools import wraps

from cms.models import Title
from cms.utils import get_current_site as cms_get_current_site
from cms.utils.i18n import get_public_languages
from django.conf import settings
from django.contrib.sitemaps import Sitemap
from django.contrib.sites.shortcuts import get_current_site
from django.core.paginator import EmptyPage, PageNotAnInteger
from django.db.models import Q
from django.http import Http404
from django.template.response import TemplateResponse
from django.urls import reverse
from django.utils import timezone, translation
from django.utils.http import http_date

LIMIT = settings.SITEMAPS_PAGE_PER_ITEM



def from_iterable(iterables):
    """
    Backport of itertools.chain.from_iterable
    """
    for it in iterables:
        for element in it:
            yield element


class BaseSitemaps(Sitemap):
    changefreq = "monthly"
    priority = 0.5
    limit = 100

    def get_query_filter(self):
        site = cms_get_current_site()
        languages = get_public_languages(site_id=site.pk)

        query_filter = Q()
        query_filter.add(Q(redirect="") | Q(redirect__isnull=True), Q.AND)
        query_filter.add(Q(language__in=languages), Q.AND)
        query_filter.add(Q(page__login_required=False), Q.AND)
        query_filter.add(Q(page__node__site=site), Q.AND)
        query_filter.add(Q(published=True), Q.AND)
        return query_filter

    def lastmod(self, title):
        modification_dates = [title.page.changed_date, title.page.publication_date]
        plugins_for_placeholder = lambda placeholder: placeholder.get_plugins()
        plugins = from_iterable(
            map(plugins_for_placeholder, title.page.placeholders.all())
        )
        plugin_modification_dates = map(lambda plugin: plugin.changed_date, plugins)
        modification_dates.extend(plugin_modification_dates)
        return max(modification_dates)

    def location(self, title):
        translation.activate(title.language)
        url = title.page.get_absolute_url(title.language)
        translation.deactivate()
        return url


class RingtoneSitemaps(BaseSitemaps):
    changefreq = "monthly"
    priority = 0.5

    def items(self):
        query_filter = self.get_query_filter()
        query_filter.add(Q(page__type=3), Q.AND)
        all_titles = Title.objects.filter(query_filter).order_by("page__node__path").distinct()
        return all_titles

class CategorySitemaps(BaseSitemaps):
    changefreq = "monthly"
    priority = 0.5

    def items(self):
        query_filter = self.get_query_filter()
        query_filter.add(Q(page__type=2), Q.AND)
        all_titles = Title.objects.filter(query_filter).order_by("page__node__path").distinct()
        return all_titles


class PageSitemaps(BaseSitemaps):
    changefreq = "monthly"
    priority = 0.5

    def items(self):
        query_filter = self.get_query_filter()
        query_filter.add(Q(page__type=1), Q.AND)
        all_titles = Title.objects.filter(query_filter).order_by("page__node__path").distinct()
        return all_titles

# sitemaps url
SITEMAP_URL = "sitemap.xml"
SITEMAP_SECTION = "<section>.xml"
SITEMAP_OBJECT = {
    "sitemaps": {
        "ringtone": RingtoneSitemaps,
        "category": CategorySitemaps,
        "page": PageSitemaps,
    }
}
