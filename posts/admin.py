from django.contrib import admin
from .models import Post

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ('user', 'created_at', 'content')
    list_filter = ('user', 'created_at')
    search_fields = ('user__username', 'content')
    ordering = ('-created_at',)
    date_hierarchy = 'created_at'
