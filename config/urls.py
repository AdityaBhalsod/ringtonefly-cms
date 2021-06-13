from cms.sitemaps import CMSSitemap
from django.conf import settings
from django.conf.urls.i18n import i18n_patterns
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.sitemaps.views import sitemap
from django.urls import include, path
from django.urls.conf import re_path
from .views import contact_us, rigntone_incress_download, react, search_ringtone
from django.views.generic.base import TemplateView


admin.autodiscover()

urlpatterns = [
    path("react", react, name="react"),
    path("search", search_ringtone, name="search_ringtone"),
    path("contact-us/submit/", contact_us, name="contact_us_submit"),
    path(
        "rigntone/download/",
        rigntone_incress_download,
        name="rigntone_incress_download",
    ),
    path("sitemap.xml", sitemap, {"sitemaps": {"cmspages": CMSSitemap}}),
    path("ckeditor/", include("ckeditor_uploader.urls")),
    path(
        "robots.txt",
        TemplateView.as_view(template_name="robots.txt", content_type="text/plain"),
    ),
    re_path(r"^ads\.txt", include("ads_txt.urls")),
]


urlpatterns += [
    path("admin/", admin.site.urls),
    path("", include("cms.urls")),
]

# This is only needed when using runserver.
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
