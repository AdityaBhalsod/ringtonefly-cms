from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from django.utils.translation import ugettext_lazy as _

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

    def render(self, context, instance, placeholder):
        try:
            limit = LimitationObject.objects.first()
            pagination = limit.category_page
        except Exception: 
            pagination = 12
        
        context = super(FetchRingtone, self).render(context, instance, placeholder)
        context["current_category_ringtone"] = Ringtone.objects.filter(
            category__slug=context["request"].current_page.get_slug()
        ).order_by("-created_at")[0:pagination]
        context["current_category_object"] = Category.objects.filter(
            slug=context["request"].current_page.get_slug()
        ).last()
        return context


@plugin_pool.register_plugin
class Favorite(CMSPluginBase):
    model = FavoritePlugin
    inlines = [Top50Admin]
    module = _("Common")
    name = _("Home page ringtone")  # name of the plugin in the interface
    render_template = "home_page_item.html"
    cache = False

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


        context = super(Favorite, self).render(context, instance, placeholder)

        ringtone_objects = Ringtone.objects.all()

        context["popular_ringtones"] = ringtone_objects.order_by("-download_count")[
            0:popular_pagination
        ]
        context["new_ringtones"] = ringtone_objects.order_by("-created_at")[
            0:new_pagination
        ]
        context["top50"] = instance.top50_field.all()[0:top50_pagination]

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
