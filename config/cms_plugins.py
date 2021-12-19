from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from django.utils.translation import ugettext_lazy as _
from django.core.paginator import InvalidPage, Paginator
from django.http import Http404


from .models import (
    AboutUsPlugin,
    Category,
    CategoryPanelPlugin,
    ContactUsPlugin,
    ContainerPlugin,
    ContainerPluginV2,
    FavoritePlugin,
    FetchRingtonePlugin,
    LimitationObject,
    Ringtone,
    SingleFavoritePlugin,
    SingleRingtonePlugin,
    Top50Admin,
)

@plugin_pool.register_plugin
class Container(CMSPluginBase):
    model = ContainerPlugin
    module = _("Common")
    name = _("Container")  # name of the plugin in the interface
    render_template = "container.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(Container, self).render(context, instance, placeholder)
        context.update({"container": instance})
        return context


@plugin_pool.register_plugin
class ContainerV2(CMSPluginBase):
    model = ContainerPluginV2
    module = _("Common")
    name = _("Container V2")  # name of the plugin in the interface
    render_template = "container_v2.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ContainerV2, self).render(context, instance, placeholder)
        context.update({"container": instance})
        return context


@plugin_pool.register_plugin
class AboutUs(CMSPluginBase):
    model = AboutUsPlugin
    module = _("Common")
    name = _("About Us")  # name of the plugin in the interface
    render_template = "about_us.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(AboutUs, self).render(context, instance, placeholder)
        context.update({"about_us": instance})
        return context


@plugin_pool.register_plugin
class ContactUs(CMSPluginBase):
    model = ContactUsPlugin
    module = _("Common")
    name = _("Contact Us")  # name of the plugin in the interface
    render_template = "contact_us.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(ContactUs, self).render(context, instance, placeholder)
        context.update({"contact_us": instance})
        return context


@plugin_pool.register_plugin
class SingleRingtone(CMSPluginBase):
    model = SingleRingtonePlugin
    module = _("Common")
    name = _("Single Ringtone")  # name of the plugin in the interface
    render_template = "single_ringtone.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(SingleRingtone, self).render(context, instance, placeholder)
        context.update({"ringtone": instance.ringtone})
        return context


@plugin_pool.register_plugin
class CategoryPanel(CMSPluginBase):
    model = CategoryPanelPlugin
    module = _("Common")
    name = _("Category Panel")  # name of the plugin in the interface
    render_template = "category_panel.html"
    cache = False

    def render(self, context, instance, placeholder):
        context = super(CategoryPanel, self).render(context, instance, placeholder)
        return context


@plugin_pool.register_plugin
class FetchRingtone(CMSPluginBase):
    model = FetchRingtonePlugin
    module = _("Common")
    name = _("All ringtone panel")  # name of the plugin in the interface
    render_template = "all_ringtone_panel.html"
    cache = False

    def paginate_queryset(self, page, queryset, page_size):
        paginator = Paginator(queryset, page_size)
        try:
            page_number = int(page)
        except ValueError:
            if page == "last":
                page_number = paginator.num_pages
            else:
                raise Http404(
                    _("Page is not “last”, nor can it be converted to an int.")
                )
        try:
            page = paginator.page(page_number)
            return paginator, page, page.object_list, page.has_next(), page.has_previous()
        except InvalidPage as e:
            raise Http404(
                _("Invalid page (%(page_number)s): %(message)s")
                % {"page_number": page_number, "message": str(e)}
            )


    def render(self, context, instance, placeholder):
        try:
            limit = LimitationObject.objects.first()
            pagination_number = limit.category_page
        except Exception:
            pagination_number = 12

        page_number = context["request"].GET.get("page") or 1

        context = super(FetchRingtone, self).render(context, instance, placeholder)

        queryset = Ringtone.objects.filter(
            category__slug=context["request"].current_page.get_slug()
        ).order_by("-created_at")

        paginator, page, queryset, has_next, has_previous = self.paginate_queryset(
            page_number, queryset, pagination_number
        )

        context["paginator"] = paginator
        context["page"] = page
        context["has_next"] = has_next
        context["has_previous"] = has_previous
        context["current_category_ringtone"] = queryset
        context["current_category_object"] = Category.objects.filter(
            slug=context["request"].current_page.get_slug()
        ).last()
        return context


@plugin_pool.register_plugin
class Favorite(CMSPluginBase):
    model = FavoritePlugin
    module = _("Common")
    inlines = [Top50Admin]
    name = _("Common ringtone container")  # name of the plugin in the interface
    render_template = "favorite.html"
    cache = False

    def paginate_queryset(self, page, queryset, page_size):
        paginator = Paginator(queryset, page_size)
        try:
            page_number = int(page)
        except ValueError:
            if page == "last":
                page_number = paginator.num_pages
            else:
                raise Http404(
                    _("Page is not “last”, nor can it be converted to an int.")
                )
        try:
            page = paginator.page(page_number)
            return paginator, page, page.object_list, page.has_next(), page.has_previous()
        except InvalidPage as e:
            raise Http404(
                _("Invalid page (%(page_number)s): %(message)s")
                % {"page_number": page_number, "message": str(e)}
            )

    def render(self, context, instance, placeholder):
        try:
            limit = LimitationObject.objects.first()
            popular_pagination = limit.popular_container
            new_pagination = limit.new_container
            top50_pagination = limit.top_50_container
        except Exception: 
            popular_pagination = 12
            new_pagination = 12
            top50_pagination = 12

        page_number = context["request"].GET.get("page") or 1

        context = super(Favorite, self).render(context, instance, placeholder)

        queryset = Ringtone.objects.all().order_by("-created_at")
        paginator, page, queryset, has_next, has_previous = self.paginate_queryset(
            page_number, queryset, top50_pagination
        )
        context["paginator"] = paginator
        context["page"] = page
        context["has_next"] = has_next
        context["has_previous"] = has_previous
        return context

        

@plugin_pool.register_plugin
class SingleFavorite(CMSPluginBase):
    model = SingleFavoritePlugin
    module = _("Common")
    name = _("Single popular ringtone")  # name of the plugin in the interface
    render_template = "single_popular_ringtone.html"
    cache = False

    def render(self, context, instance, placeholder):
        try:
            limit = LimitationObject.objects.first()
            pagination = limit.individual_ringtone_page
        except Exception:
            pagination = 12

        context = super(SingleFavorite, self).render(context, instance, placeholder)
        context["popular_ringtones"] = (
            Ringtone.objects.all()
            .exclude(slug=context["request"].current_page.get_slug())
            .order_by("-download_count")[0:pagination]
        )
        return context
