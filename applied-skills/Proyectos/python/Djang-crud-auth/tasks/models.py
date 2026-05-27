from django.db import models
#Relacion de tabla user
from django.contrib.auth.models import User
from django.utils import timezone
# Create your models here.
#tCREAR una tabla
class Task(models.Model):
  #Char->texto,TextField->Textos ,mas largos DataTimeField->Cuando se crea la tarea
  #
  title = models.CharField(max_length=200)
  description = models.TextField(max_length=1000)
  created = models.DateTimeField(auto_now_add=True)
  #Opcionl blank
  datecompleted = models.DateTimeField(null=True, blank=True)
  important = models.BooleanField(default=False)
  #Relacion conun usuario en eliminacion con la tabla user
  user = models.ForeignKey(User, on_delete=models.CASCADE)

#Recibe str
  def __str__(self):
    #Cuando se utilice como un string retorna en admin  
    return self.title + ' - ' + self.user.username
 
class SensorData(models.Model):
    temperatura = models.DecimalField(max_digits=10, decimal_places=2)
    humedad = models.DecimalField(max_digits=10, decimal_places=2)
    time_insertar =  models.DateTimeField(auto_now_add=True)

class TableSensor(models.Model):
    temperatura = models.DecimalField(max_digits=10, decimal_places=2)
    humedad = models.DecimalField(max_digits=10, decimal_places=2)
    time_insertar = models.DateTimeField(auto_now_add=True)
    # def __str__(self):
    #     return f"Data - Temp: {self.temperatura}, Humedad: {self.humedad}, Tiempo: {self.time_insertar.strftime('%Y-%m-%d %H:%M:%S')}"

    def save(self, *args, **kwargs):
        # Formatear la fecha y hora en el formato deseado
        self.time_insertar = timezone.now().strftime('%Y-%m-%d %H:%M:%S')
        super(SensorData, self).save(*args, **kwargs)