from django.contrib import admin
from .models import Category
# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id','title')

admin.site.register(Category, CategoryAdmin)