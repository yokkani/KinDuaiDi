from django.conf.urls.static import static
from django.urls import path
from . import views
from django.conf import settings

urlpatterns = [

]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)