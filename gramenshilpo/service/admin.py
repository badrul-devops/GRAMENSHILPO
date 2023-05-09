from django.contrib import admin

# Register your models here.
from service.models import catagoery,sub_catagoery

admin.site.register(catagoery)
admin.site.register(sub_catagoery)