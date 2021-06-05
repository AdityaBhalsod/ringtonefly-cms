from django.shortcuts import redirect
from datetime import datetime
from .models import ContactUs, Ringtone
from django.db.models import F
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
import json
import magic


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
def rigntone_incress_download(request):
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
    data = {}
    for key, _ in request.GET.items():
        data = json.loads(key)

    query = data.get("query", None)
    if query:
        ringtone_objects = Ringtone.objects.filter(name__icontains=query)
        ringtones = []
        for item in ringtone_objects:
            ringtone_file = item.android_ringtone_file if item.android_ringtone_file else item.iphone_ringtone_file
            ringtones.append(
                {
                    "category_public_url": item.category.page.get_public_url(),
                    "category_name": item.category.name,
                    "ringtone_url": item.page.get_public_url(),
                    "ringtone_media_url": ringtone_file.url,
                    "ringtone_type": "audio/mpeg" if item.android_ringtone_file else "audio/audio/x-m4r",
                    "ringtone_name": item.name,
                    "ringtone_download_count": item.download_count,
                }
            )
        return JsonResponse({"result": True, "ringtone": ringtones, "query":query})
    return JsonResponse({"result": False})
    