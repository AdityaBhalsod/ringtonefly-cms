import json
import random
from datetime import datetime
from itertools import chain

from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.db.models import F, Q
from django.http import HttpResponse, JsonResponse
from django.shortcuts import redirect, render
from django.views.decorators.csrf import csrf_exempt

from config.number_system import numerize

from .models import ContactUs, LimitationObject, Ringtone, Top50


def contact_us(request):
    success_message = None
    error_message = None
    return_url = "/contact-us/"

    if request.POST.get("current_url", None):
        return_url = request.POST.get("current_url")

    if (
        request.POST.get("name", None)
        and request.POST.get("email", None)
        and request.POST.get("subject", None)
        and request.POST.get("message", None)
    ):
        ContactUs.objects.create(
            your_name=request.POST.get("name"),
            email_address=request.POST.get("email"),
            subject=request.POST.get("subject"),
            message=request.POST.get("message"),
        )
        success_message = f"Successfully message sent on {datetime.now().strftime('%d/%m/%Y, %I:%M:%S')}."
    else:
        error_message = (
            f"Something went wrong! on {datetime.now().strftime('%d/%m/%Y, %I:%M:%S')}"
        )

    request.session["success_message"] = success_message
    request.session["error_message"] = error_message
    return redirect(return_url)


@csrf_exempt
def ringtone_incress_download(request):
    data = {}
    for key, _ in request.POST.items():
        data = json.loads(key)

    ringtone_id = data.get("ringtone_id", None)
    if ringtone_id and not request.session.get(
        f"ringtone_download_{ringtone_id}", None
    ):
        Ringtone.objects.filter(pk=int(ringtone_id)).update(
            download_count=F("download_count") + 1
        )
        request.session[f"ringtone_download_{ringtone_id}"] = True

        ringtone_download_count = Ringtone.objects.get(
            pk=int(ringtone_id)
        ).download_count
        return JsonResponse({"result": True, "download": ringtone_download_count})
    return JsonResponse({"result": False})


@csrf_exempt
def react(request):
    data = {}
    for key, _ in request.POST.items():
        data = json.loads(key)

    ringtone_id = data.get("ringtone_id", None)
    react = data.get("react", None)
    if ringtone_id:
        if react:
            Ringtone.objects.filter(pk=int(ringtone_id)).update(
                like_count=F("like_count") + 1
            )
            request.session[f"ringtone_react_{ringtone_id}"] = True
        else:
            Ringtone.objects.filter(pk=int(ringtone_id)).update(
                like_count=F("like_count") - 1
            )
            request.session[f"ringtone_react_{ringtone_id}"] = False

        ringtone_like_count = Ringtone.objects.get(pk=int(ringtone_id)).like_count
        return JsonResponse({"result": True, "react": ringtone_like_count})
    return JsonResponse({"result": False})


@csrf_exempt
def search_ringtone(request):
    query = request.GET.get("query", None)
    ringtone_objects = []
    if query:
        ringtone_objects = Ringtone.objects.filter(name__icontains=query)
    return render(
        request,
        template_name="search.html",
        context={"query": query, "ringtones": ringtone_objects},
    )


def set_paginator(request, objects_list, page_size):
    """
    Set paginator return context of paginator.
    """
    paginator = Paginator(objects_list, page_size)
    page_number = request.GET.get("page", 1)
    try:
        instance_paginator = paginator.page(page_number)
    except PageNotAnInteger:
        instance_paginator = paginator.page(1)
    except EmptyPage:
        instance_paginator = paginator.page(paginator.num_pages)

    return instance_paginator, page_number


def ringtone_serialization(objects):
    results = []
    for ringtone in objects:
        object = {}
        object["category_name"] = ringtone.category.name
        object["category_page_url"] = ringtone.category.page.get_public_url()
        object["ringtone_name"] = ringtone.name
        object["ringtone_file_url"] = (
            ringtone.android_ringtone_file.url
            if ringtone.android_ringtone_file
            else ringtone.iphone_ringtone_file.url
        )
        object["file_format"] = (
            "audio/mpeg" if ringtone.android_ringtone_file else "audio/x-m4r"
        )
        object["ringtone_page_url"] = ringtone.page.get_public_url()
        object["download_count"] = numerize(ringtone.download_count)
        results.append(object)
    return results


def ringtone_html_serialization(objects):
    results = ""
    for ringtone in objects:
        ringtone_file_url = (
            ringtone.android_ringtone_file.url
            if ringtone.android_ringtone_file
            else ringtone.iphone_ringtone_file.url
        )
        file_format = "audio/mpeg" if ringtone.android_ringtone_file else "audio/x-m4r"        

        results = (
            results
            + """<div class='ringtone-player'>\
			<div class='play-btn'> \
				<i class='fa fa-play-circle'></i>\
				<i class='fa fa-snowflake-o'></i>\
				<span class='track'>\
					<audio id='audio' controls preload='none'>\
						<source src='{0}' type='{1}'>\
					</audio>\
				</span>\
			</div>\
			<div class='ringtone-info'>\
				<div class='categoryName'><a href='{2}'>{3}</a>\
				</div>\
				<div class='ringtoneName'>\
					<h2><a href='{4}'>{5}</a></h2>\
				</div>\
				<div class='download-info'><b>{6}</b> - Downloads</div>\
			</div>\
		</div>""".format(
                ringtone_file_url,
                file_format,
                ringtone.category.page.get_public_url(),
                ringtone.category.name,
                ringtone.page.get_public_url(),
                ringtone.name,
                numerize(ringtone.download_count),
            )
        )
    return results


@csrf_exempt
def popular_ringtone(request):
    try:
        limit = LimitationObject.objects.first()
        popular_pagination = limit.popular_container
    except Exception:
        popular_pagination = 12

    ringtone_objects = Ringtone.objects.all().order_by("-download_count")

    if ringtone_objects:
        paginator, page_number = set_paginator(
            request=request, objects_list=ringtone_objects, page_size=popular_pagination
        )
        has_next_object = paginator.has_next()
        results = ringtone_serialization(paginator.object_list)
        return JsonResponse(
            {
                "ringtoneObjects": results,
                "currentPageNumber": page_number,
                "hasNext": has_next_object,
            }
        )
    return JsonResponse({})


@csrf_exempt
def new_ringtone(request):
    try:
        limit = LimitationObject.objects.first()
        new_pagination = limit.new_container
    except Exception:
        new_pagination = 12

    ringtone_objects = Ringtone.objects.all().order_by("-created_at")

    if ringtone_objects:
        paginator, page_number = set_paginator(
            request=request, objects_list=ringtone_objects, page_size=new_pagination
        )
        has_next_object = paginator.has_next()
        results = ringtone_serialization(paginator.object_list)
        return JsonResponse(
            {
                "ringtoneObjects": results,
                "currentPageNumber": page_number,
                "hasNext": has_next_object,
            }
        )
    return JsonResponse({})


@csrf_exempt
def individual_ringtone(request):
    try:
        limit = LimitationObject.objects.first()
        individual_ringtone_page = limit.individual_ringtone_page
    except Exception:
        individual_ringtone_page = 12

    query = request.GET.get("name", None)
    
    ringtone_object = Ringtone.objects.filter(slug=query).first()
    if ringtone_object:
        ringtone_objects_1 = Ringtone.objects.filter(category=ringtone_object.category).order_by("-created_at")
        ringtone_objects_2 = Ringtone.objects.filter(~Q(category=ringtone_object.category)).order_by("-created_at")
        final_objects = (ringtone_objects_1 | ringtone_objects_2).distinct()
        paginator, _ = set_paginator(
            request=request,
            objects_list=final_objects,
            page_size=individual_ringtone_page,
        )
        has_next_object = paginator.has_next()
        final_objects_list = list(paginator.object_list)
        random.shuffle(final_objects_list)
        results = ringtone_html_serialization(final_objects_list)
        return JsonResponse(
            {
                "content": results,
                "hasNext": has_next_object,
            }
        )
    return JsonResponse({})



@csrf_exempt
def top_50_ringtone(request):
    try:
        limit = LimitationObject.objects.first()
        top50_pagination = limit.top_50_container
    except Exception:
        top50_pagination = 12

    ringtone_objects = Top50.objects.all()

    if ringtone_objects:
        paginator, page_number = set_paginator(
            request=request, objects_list=ringtone_objects, page_size=top50_pagination
        )
        has_next_object = paginator.has_next()
        results = []
        for instance in paginator.object_list:
            object = {}
            object["category_name"] = instance.ringtone.category.name
            object[
                "category_page_url"
            ] = instance.ringtone.category.page.get_public_url()
            object["ringtone_name"] = instance.ringtone.name
            object["ringtone_file_url"] = (
                instance.ringtone.android_ringtone_file.url
                if instance.ringtone.android_ringtone_file
                else instance.ringtone.iphone_ringtone_file.url
            )
            object["file_format"] = (
                "audio/mpeg"
                if instance.ringtone.android_ringtone_file
                else "audio/x-m4r"
            )
            object["ringtone_page_url"] = instance.ringtone.page.get_public_url()
            object["download_count"] = numerize(instance.ringtone.download_count)
            results.append(object)
        return JsonResponse(
            {
                "ringtoneObjects": results,
                "currentPageNumber": page_number,
                "hasNext": has_next_object,
            }
        )
    return JsonResponse({})


@csrf_exempt
def category_releted_ringtone(request):
    try:
        limit = LimitationObject.objects.first()
        category_page_pagination = limit.category_page
    except Exception:
        category_page_pagination = 12

    category_slug = request.GET.get("name", None)

    if not category_slug:
        return JsonResponse({})

    ringtone_objects = Ringtone.objects.filter(category__slug=category_slug).order_by(
        "-created_at"
    )

    if ringtone_objects:
        paginator, page_number = set_paginator(
            request=request,
            objects_list=ringtone_objects,
            page_size=category_page_pagination,
        )
        has_next_object = paginator.has_next()
        results = ringtone_serialization(paginator.object_list)
        return JsonResponse(
            {
                "ringtoneObjects": results,
                "currentPageNumber": page_number,
                "hasNext": has_next_object,
            }
        )
    return JsonResponse({})
