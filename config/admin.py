from cms.models.permissionmodels import GlobalPagePermission, PageUserGroup
from cms.models.static_placeholder import StaticPlaceholder
from django.contrib import admin
from django.contrib.auth.models import Group
from filer.models.foldermodels import Folder
from filer.models.thumbnailoptionmodels import ThumbnailOption

from config.models import (
    Category,
    ContactUs,
    FooterHyperlinkAdmin,
    FooterPlugin,
    LinkModelAdmin,
    MetaModelAdmin,
    Ringtone,
    SEOTool,
    SiteConfig,
)

# Django admin page removing unnecessary models.
admin.site.unregister(Folder)
admin.site.unregister(ThumbnailOption)
admin.site.unregister(GlobalPagePermission)
admin.site.unregister(StaticPlaceholder)
admin.site.unregister(PageUserGroup)
admin.site.unregister(Group)


class BaseAdmin(admin.ModelAdmin):
    exclude = ["sortable"]


@admin.register(Category)
class CategoryAdmin(BaseAdmin):
    exclude = ["title", "page", "sortable"]


@admin.register(Ringtone)
class RingtoneAdmin(BaseAdmin):
    exclude = [
        "title",
        "page",
    ]
    list_display = ["name", "like_count", "download_count"]


@admin.register(FooterPlugin)
class FooterAdmin(BaseAdmin):
    inlines = [
        FooterHyperlinkAdmin,
    ]
    exclude = ["sortable"]

    def has_add_permission(self, request):
        # if there's already an entry, do not allow adding
        count = FooterPlugin.objects.all().count()
        if count == 0:
            return True

        return False

    def has_delete_permission(self, request, obj=None):
        return False


@admin.register(ContactUs)
class ContactUsAdmin(BaseAdmin):
    list_display = ["your_name", "email_address", "subject"]


@admin.register(SiteConfig)
class SiteConfigAdmin(BaseAdmin):
    def has_add_permission(self, request):
        # if there's already an entry, do not allow adding
        count = SiteConfig.objects.all().count()
        if count == 0:
            return True

        return False

    def has_delete_permission(self, request, obj=None):
        return False


@admin.register(SEOTool)
class SEOToolAdmin(BaseAdmin):
    inlines = [
        MetaModelAdmin,LinkModelAdmin
    ]
    exclude = ["sortable"]

    def has_add_permission(self, request):
        # if there's already an entry, do not allow adding
        count = SEOTool.objects.all().count()
        if count == 0:
            return True

        return False

    def has_delete_permission(self, request, obj=None):
        return False
