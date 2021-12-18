from cms.models import Title
from django.contrib.sitemaps import ping_google
from django.db.models.signals import post_save 

from config.urls import SITEMAP_URL


def post_update_title(sender, instance, created, **kwargs):
    if instance.published:
        try:
            ping_google(sitemap_url=SITEMAP_URL)
        except Exception as sitemaps_error:
            print(sitemaps_error)


post_save.connect(receiver=post_update_title, sender=Title)