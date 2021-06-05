from .models import Category, FooterPlugin, Ringtone, SEOTool, SiteConfig


def get_global_context(request):
    context = {}
    context["categories"] = Category.objects.all()
    context["site_config"] = SiteConfig.objects.all().last()
    context["footer"] = FooterPlugin.objects.all().last()
    context["seo"] = SEOTool.objects.all().last()

    ringtones = Ringtone.objects.all()
    context["popular_ringtones"] = ringtones.order_by('-download_count')
    context["new_ringtones"] = ringtones.order_by("-created_at")
    return context

