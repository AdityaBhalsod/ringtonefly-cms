from config.models import Category, Ringtone
from cms.models import Page

def convert_page_type():
    category_page_ids = Category.objects.values_list("page__id",flat=True)[::1]
    ringtone_page_ids = Ringtone.objects.values_list("page__id",flat=True)[::1]
    
    Page.objects.filter(id__in=category_page_ids).update(type=2)
    Page.objects.filter(id__in=ringtone_page_ids).update(type=3)

        