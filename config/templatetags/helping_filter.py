from config.number_system import numerize
from config.models import Category, Ringtone
from django import template
from django.utils.safestring import mark_safe


register = template.Library()


@register.filter
def convert_react_class(request, value):
    ringtone_react = request.session.get(f"ringtone_react_{value}", None)
    return "fa fa-heart" if ringtone_react else "fa fa-heart-o"


@register.filter
def breadcrumb(request):
    current_page = request.current_page

    if not current_page:
        return mark_safe("""""")

    try:
        objects_find = Ringtone.objects.get(name__icontains=current_page)
        detect = 1
    except Exception:
        try:
            objects_find = Category.objects.get(name__icontains=current_page)
            detect = 2
        except Exception:
            objects_find = None
            detect = 0

    contect = """
    <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
        <a itemprop="item" href="/" href=""><span itemprop="name">Home</span></a>
        <meta itemprop="position" content="1" />
    </li>"""

    if objects_find:
        if detect == 1:
            contect += f"""
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="{objects_find.category.page.get_public_url()}"><span itemprop="name">{objects_find.category.name}</span></a>
                <meta itemprop="position" content="2" />
            </li>
            """
            contect += f"""
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="{objects_find.page.get_public_url()}"><span itemprop="name">{objects_find.name}</span></a>
                <meta itemprop="position" content="3" />
            </li>
            """

        elif detect == 2:
            contect += f"""
            <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="{objects_find.page.get_public_url()}"><span itemprop="name">{objects_find.name}</span></a>
                <meta itemprop="position" content="1" />
            </li>
            """

    else:
        contect += f"""
        <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
            <a itemprop="item" href="{request.path}"><span itemprop="name">{current_page}</span></a>
            <meta itemprop="position" content="2" />
        </li>
        """

    if "home" in str(current_page).lower():
        return mark_safe("""""")

    return mark_safe(contect)


@register.filter
def convert_into_tag(request):
    url = request.get_full_path()
    tags = []
    if url:
        for item in url.split("/"):
            if not item or "?" in item or "en" in item:
                continue
            else:
                convert_into_undersocre = item.replace("-", "_")
                if convert_into_undersocre:
                    tags.append(f"#{convert_into_undersocre}")
    return ",".join(item for item in tags)


@register.filter
def get_title(request):
    if request.current_page.get_menu_title():
        return str(request.current_page.get_menu_title())
    else:
        return str(request.current_page.get_title())


@register.filter
def number_system(value):
    return numerize(value)