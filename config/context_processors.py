from .models import Category, FooterPlugin, Ringtone, SEOTool, SiteConfig


def get_global_context(request):
    context = {}
    context["categories"] = Category.objects.all()
    context["site_config"] = SiteConfig.objects.all().last()
    context["footer"] = FooterPlugin.objects.all().last()
    context["seo"] = SEOTool.objects.all().last()
    return context

