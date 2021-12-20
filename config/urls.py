from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import include, path
from django.urls.conf import re_path
from django.views.generic.base import TemplateView
from config.sitemaps import SITEMAPS

from .views import (
    category_releted_ringtone,
    contact_us,
    individual_ringtone,
    new_ringtone,
    popular_ringtone,
    react,
    ringtone_incress_download,
    search_ringtone,
    top_50_ringtone,
)

admin.autodiscover()


urlpatterns = [
    path("react", react, name="react"),
    path("search", search_ringtone, name="search_ringtone"),
    path("contact-us/submit/", contact_us, name="contact_us_submit"),
    path(
        "rigntone/download/",
        ringtone_incress_download,
        name="ringtone_incress_download",
    ),
    # ######## api v1 ########
    path("api/v1/popular-ringtone", popular_ringtone, name="popular_ringtone"),
    path("api/v1/new-ringtone", new_ringtone, name="new_ringtone"),
    path("api/v1/top-50-ringtone", top_50_ringtone, name="top_50_ringtone"),
    path("api/v1/individual-ringtone", individual_ringtone, name="individual_ringtone"),
    path(
        "api/v1/category-releted-ringtone",
        category_releted_ringtone,
        name="category_releted_ringtone",
    ),
    # ######## api v1 ########
    path("ckeditor/", include("ckeditor_uploader.urls")),
    path(
        "robots.txt",
        TemplateView.as_view(template_name="robots.txt", content_type="text/plain"),
    ),
    re_path(r"^ads\.txt", include("ads_txt.urls")),
] + SITEMAPS


urlpatterns += [
    path("admin/", admin.site.urls),
    path("", include("cms.urls")),
]

# This is only needed when using runserver.
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
