#Admin crea por default se coloca
from django.contrib import admin
from .models import Task,SensorData

# Register your models here.
class TaskAdmin(admin.ModelAdmin):
  #Cuales campos son de solo tectura
  readonly_fields = ('created', )

admin.site.register(Task, TaskAdmin)

# # Register your models here.
# class SensorDataAdmin(admin.ModelAdmin):
#   #Cuales campos son de solo tectura
#   readonly_fields = ('created', )

# admin.site.register(SensorData, SensorDataAdmin)