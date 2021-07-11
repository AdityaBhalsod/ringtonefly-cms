from ckeditor_uploader.fields import RichTextUploadingField
from cms import api
from cms.api import add_plugin
from cms.constants import TEMPLATE_INHERITANCE_MAGIC
from cms.models import Page, Title
from cms.models.pluginmodel import CMSPlugin
from django.utils.text import slugify

from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.contrib import admin
from django.core.validators import FileExtensionValidator


def audio_android_file_extension_validator():
    return [FileExtensionValidator(allowed_extensions=["mp3"])]


def audio_iphone_file_extension_validator():
    return [FileExtensionValidator(allowed_extensions=["m4r"])]


def favicon_extension_validator():
    return [FileExtensionValidator(allowed_extensions=["ico", "icos"])]


def image_extension_validator():
    return [FileExtensionValidator(allowed_extensions=["jpg", "jpeg", "bmp", "png"])]


# Create your models here.
############################################################################################
class BaseModel(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        abstract = True


class BaseAdminStackLine(admin.StackedInline):
    pass


############################################################################################
class CategoryPlugin(CMSPlugin):
    def copy_relations(self, oldinstance):
        for instance in oldinstance.category_field.all().order_by("id"):
            instance.pk = None
            instance.id = None
            instance.sortable = self
            instance.save()


class Category(BaseModel):
    name = models.CharField(_("Name"), max_length=255, help_text="Name of category")
    title = models.ForeignKey(Title, blank=True, null=True, on_delete=models.SET_NULL)
    page = models.ForeignKey(Page, blank=True, null=True, on_delete=models.SET_NULL)
    meta_tag = models.TextField(_("Meta tag"), default="", blank=True, null=True)
    slug = models.SlugField(
        max_length=255, unique=True, default="", null=True, blank=True
    )

    sortable = models.ForeignKey(
        CategoryPlugin,
        on_delete=models.CASCADE,
        related_name="category_field",
        null=True,
    )

    class Meta:
        verbose_name = _("Category")
        verbose_name_plural = _("Categories")

    def __str__(self):
        return str(self.name)

    def save(self, no_signals=False, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name)

        if self.title:
            self.title.title = self.name
            self.title.slug = self.slug
            self.title.save()

            super().save(*args, **kwargs)
        else:
            page = api.create_page(
                title=self.name,
                slug=self.slug,
                language="en",
                in_navigation=False,
                template=TEMPLATE_INHERITANCE_MAGIC,
                published=False,
            )
            self.title = Title.objects.get(page=page)
            self.page = page

            ###################################################
            placeholder = page.placeholders.get(slot="content")
            add_plugin(placeholder, "FetchRingtone", "en", "first-child")
            add_plugin(placeholder, "CategoryPanel", "en", "last-child")
            ###################################################

            super().save(*args, **kwargs)

    def delete(self, *args, **kwargs):
        self.title.delete()
        self.page.delete()


class CategoryModelAdmin(BaseAdminStackLine):
    model = Category
    extra = 1


############################################################################################
class CategoryPanelPlugin(CMSPlugin):
    pass


############################################################################################
class Ringtone(BaseModel):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    name = models.CharField(_("Title"), max_length=255, help_text="Title of ringtone")
    like_count = models.BigIntegerField(
        _("Like"), default=0, help_text="Likes count of ringtone"
    )
    download_count = models.BigIntegerField(
        _("Download"), default=0, help_text="Download count of ringtone"
    )
    android_ringtone_file = models.FileField(
        _("Android ringtone"),
        upload_to="android/",
        blank=True,
        null=True,
        validators=audio_android_file_extension_validator(),
    )
    iphone_ringtone_file = models.FileField(
        _("Iphone ringtone"),
        upload_to="iphone/",
        blank=True,
        null=True,
        validators=audio_iphone_file_extension_validator(),
    )
    image = models.FileField(
        _("Image"),
        upload_to="Ringtone/",
        blank=True,
        null=True,
        validators=image_extension_validator(),
    )
    description = models.CharField(
        _("Description"),
        max_length=255,
        help_text="Description of ringtone",
        null=True,
        blank=True,
    )
    title = models.ForeignKey(Title, blank=True, null=True, on_delete=models.SET_NULL)
    page = models.ForeignKey(Page, blank=True, null=True, on_delete=models.SET_NULL)
    slug = models.SlugField(
        max_length=255, unique=True, default="", null=True, blank=True
    )

    class Meta:
        verbose_name = _("Ringtone")
        verbose_name_plural = _("Ringtones")

    def __str__(self):
        return str(self.name)

    def save(self, no_signals=False, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name)

        if self.title:
            self.title.title = self.name
            self.title.slug = self.slug
            self.title.save()

            super().save(*args, **kwargs)
        else:
            page = api.create_page(
                title=self.name,
                slug=self.slug,
                language="en",
                in_navigation=False,
                template=TEMPLATE_INHERITANCE_MAGIC,
                published=False,
            )
            self.title = Title.objects.get(page=page)
            self.page = page

            ###################################################
            super().save(*args, **kwargs)
            data = {"ringtone": self}
            placeholder = page.placeholders.get(slot="content")
            add_plugin(placeholder, "SingleRingtone", "en", "first-child", **data)
            add_plugin(placeholder, "SingleFavorite", "en", "last-child")
            ###################################################

            super().save(*args, **kwargs)

    def update(self, *args, **kwargs):
        self.title.update(*args, **kwargs)
        self.page.update(*args, **kwargs)

    def delete(self, *args, **kwargs):
        self.title.delete()
        self.page.delete()


############################################################################################
class SingleRingtonePlugin(CMSPlugin):
    ringtone = models.ForeignKey(
        Ringtone,
        max_length=255,
        help_text="Call ringtone object.",
        on_delete=models.CASCADE,
        null=True,
        blank=True,
    )


############################################################################################
class FetchRingtonePlugin(CMSPlugin):
    pass


############################################################################################


class FooterPlugin(CMSPlugin):
    tagline = models.CharField(
        _("Tagline"), max_length=255, help_text="Tagline of footer."
    )
    copyright = models.CharField(
        _("Copyright line"), max_length=255, help_text="Copyright line of footer."
    )

    def copy_relations(self, oldinstance):
        for instance in oldinstance.footer_field.all().order_by("id"):
            instance.pk = None
            instance.id = None
            instance.sortable = self
            instance.save()

    def __str__(self):
        return str(self.tagline)

    class Meta:
        verbose_name = _("Footer")
        verbose_name_plural = _("Footer")


class FooterHyperlink(BaseModel):
    title = models.CharField(
        _("Title"), max_length=255, help_text="Title of footer hyperlink."
    )
    link = models.CharField(
        _("Link"), max_length=255, default="#", help_text="Link of footer hyperlink."
    )
    sortable = models.ForeignKey(
        FooterPlugin,
        on_delete=models.CASCADE,
        related_name="footer_field",
        null=True,
    )

    class Meta:
        verbose_name = _("Footer hyperlink")
        verbose_name_plural = _("Footer hyperlinks")

    def __str__(self):
        return str(self.title)


class FooterHyperlinkAdmin(BaseAdminStackLine):
    model = FooterHyperlink
    extra = 1


############################################################################################
class ContainerPlugin(CMSPlugin):
    title = models.CharField(
        _("Title"), max_length=255, help_text="Title of container."
    )
    content = RichTextUploadingField(
        _("Content"), default="", help_text="Content of container"
    )
    updated_at = models.DateTimeField(auto_now=True)


############################################################################################
class AboutUsPlugin(CMSPlugin):
    title = models.CharField(
        _("Title"), max_length=255, help_text="Title of About us.", default="About Us"
    )
    subtitle = models.CharField(
        _("Sub title"), max_length=255, help_text="Title of About us."
    )
    content = RichTextUploadingField(
        _("Content"), default="", help_text="Content of About us."
    )


############################################################################################
class ContactUsPlugin(CMSPlugin):
    title = models.CharField(
        _("Title"),
        max_length=255,
        help_text="Title of contact us.",
        default="Contact Us",
    )
    tagline = models.CharField(
        _("Tagline"), max_length=255, help_text="Tagline of contact us."
    )


############################################################################################
class ContactUs(BaseModel):
    your_name = models.CharField(
        _("Your name"), max_length=255, help_text="Please enter your name."
    )
    email_address = models.CharField(
        _("Email address"), max_length=255, help_text="Please enter your email address."
    )
    subject = models.CharField(
        _("Subject"), default="", max_length=255, help_text="Please enter a subject."
    )
    message = models.TextField(
        _("Message"), default="", help_text="Please enter a message."
    )

    def __str__(self):
        return str(self.your_name)

    class Meta:
        verbose_name = _("Contact Us")
        verbose_name_plural = _("Contact Us")


############################################################################################
class SiteConfig(BaseModel):
    favicon = models.FileField(
        _("Favicon icon"),
        upload_to="favicon",
        blank=True,
        null=True,
        validators=favicon_extension_validator(),
    )

    ads_script = models.TextField(
        _("Ads code / script"), default="", null=True, blank=True
    )
    bottom_ads_script = models.TextField(
        _("Bottem Ads code / script"), default="", null=True, blank=True
    )
    analytics_id = models.CharField(
        default="",
        max_length=255,
        help_text="Please add google analytics id.",
        null=True,
        blank=True,
    )
    google_captcha_webkey = models.CharField(
        default="",
        max_length=255,
        help_text="Please add google captcha webkey.",
        null=True,
        blank=True,
    )
    site_title = models.CharField(
        _("Site tite"),
        default="",
        max_length=255,
        help_text="Please enter a site title.",
    )
    site_name = models.CharField(
        _("Site name"),
        default="",
        max_length=255,
        help_text="Please enter a site name.",
    )
    site_url = models.CharField(
        _("Site URL"), default="", max_length=255, help_text="Please enter a site url."
    )

    def __str__(self):
        return str(self.site_name)


############################################################################################


class SEOTool(CMSPlugin):
    canonicalization = models.BooleanField(
        _("Canonicalization for current website ?"), default=False
    )
    canonicalization_url = models.CharField(
        _("Canonicalization url"), default="", null=True, blank=True, max_length=255
    )
    noindex = models.BooleanField(_("Noindex for current website ?"), default=True)
    common_keywords = models.CharField(
        _("Common Keywords"), default="", null=True, blank=True, max_length=255
    )
    common_description = models.CharField(
        _("Common Description"), default="", null=True, blank=True, max_length=255
    )
    open_graph_tag = models.BooleanField(_("Generate automatic og:tag ?"), default=True)
    twitter_tag = models.BooleanField(
        _("Generate automatic twitter:tag ?"), default=True
    )
    home_page_meta_tag = models.TextField(
        _("Home page meta-tag"),
        default="",
        null=True,
        blank=True,
        help_text="You can adding any meta tag it's only work homepage only.",
    )

    def copy_relations(self, oldinstance):
        for instance in oldinstance.meta_field.all().order_by("id"):
            instance.pk = None
            instance.id = None
            instance.sortable = self
            instance.save()

        for instance in oldinstance.link_field.all().order_by("id"):
            instance.pk = None
            instance.id = None
            instance.sortable = self
            instance.save()

    class Meta:
        verbose_name = _("SEO Tool")
        verbose_name_plural = _("SEO Tool")


class MetaModel(BaseModel):
    tag_name = models.CharField(_("Tag name"), default="", max_length=255)
    tag_value = models.CharField(_("Tag value"), default="", max_length=255)
    content = models.TextField(_("Content"), default="")
    sortable = models.ForeignKey(
        SEOTool,
        on_delete=models.CASCADE,
        related_name="meta_field",
        null=True,
    )

    class Meta:
        verbose_name = _("Meta field")
        verbose_name_plural = _("Meta fields")

    def __str__(self):
        return str(self.tag_name)


class MetaModelAdmin(BaseAdminStackLine):
    model = MetaModel
    extra = 1


class LinkModel(BaseModel):
    rel = models.CharField(_("rel"), default="", max_length=255)
    href = models.CharField(_("href"), default="", max_length=255)
    crossorigin = models.BooleanField(default=False)
    sortable = models.ForeignKey(
        SEOTool,
        on_delete=models.CASCADE,
        related_name="link_field",
        null=True,
    )

    class Meta:
        verbose_name = _("Link field")
        verbose_name_plural = _("Link fields")

    def __str__(self):
        return str(self.rel)


class LinkModelAdmin(BaseAdminStackLine):
    model = LinkModel
    extra = 1


############################################################################################
class FavoritePlugin(CMSPlugin):
    def copy_relations(self, oldinstance):
        for instance in oldinstance.top50_field.all().order_by("id"):
            instance.pk = None
            instance.id = None
            instance.sortable = self
            instance.save()


class Top50(BaseModel):
    ringtone = models.ForeignKey(
        Ringtone, on_delete=models.CASCADE, blank=True, null=True
    )
    sortable = models.ForeignKey(
        FavoritePlugin,
        on_delete=models.CASCADE,
        related_name="top50_field",
        null=True,
    )


class Top50Admin(BaseAdminStackLine):
    model = Top50
    extra = 1
    max_num = 50


############################################################################################
class SingleFavoritePlugin(CMSPlugin):
    pass


############################################################################################

class LimitationObject(BaseModel):
    popular_container = models.PositiveIntegerField(default=12)
    new_container = models.PositiveIntegerField(default=12)
    top_50_container = models.PositiveIntegerField(default=12)
    category_page = models.PositiveIntegerField(default=12)
    individual_ringtone_page = models.PositiveIntegerField(default=12)

    def __str__(self):
        return "Limitation"
############################################################################################