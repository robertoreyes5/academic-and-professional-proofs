from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.models import User
from django.db import IntegrityError
from django.utils import timezone
from django.contrib.auth.decorators import login_required
from .models import Task, SensorData,TableSensor
from .forms import TaskForm
import serial
import time
from django.db import connection
# import datetime
import os
from django.http import StreamingHttpResponse
import time
from datetime import datetime
import locale
from django.core.paginator import Paginator

# Create your views here.

def signup(request):
    if request.method == 'GET':
        return render(request, 'signup.html', {"form": UserCreationForm})
    else:
        #sI LAS CONTRASEÑas coinciden
        if request.POST["password1"] == request.POST["password2"]:
            try:
                user = User.objects.create_user(
                    request.POST["username"], password=request.POST["password1"])
                user.save()
                login(request, user)
                return redirect('tasks')
            except IntegrityError:
                return render(request, 'signup.html', {"form": UserCreationForm, "error": "Username already exists."})
        return render(request, 'signup.html', {"form": UserCreationForm, "error": "Passwords did not match."})

@login_required
def tasks(request):
    #Tareas del usuario
    tasks = Task.objects.filter(user=request.user, datecompleted__isnull=True)
    return render(request, 'tasks.html', {"tasks": tasks})

@login_required
def tasks_completed(request):
    #Filtro de fecha
    tasks = Task.objects.filter(user=request.user, datecompleted__isnull=False).order_by('-datecompleted')
    return render(request, 'tasks.html', {"tasks": tasks})

@login_required
#Renderiza la vista
def create_task(request):
    #Capturar la peticion
    if request.method == "GET":
        return render(request, 'create_task.html', {"form": TaskForm})
    else:
        #Manejo de errores
        try:
            print(request.POST)
            #Guardar los datos
            form = TaskForm(request.POST)#Poedemos ver un formulario
            #Lo guardamos con save.Lo devuelva
            new_task = form.save(commit=False)
            #usuario de la tarea
            new_task.user = request.user
            #Se guarda en bd
            new_task.save()
            #Redirecciona en task
            return redirect('tasks')
        except ValueError:
            return render(request, 'create_task.html', {"form": TaskForm, "error": "Error creating task."})

def home(request):
    return render(request, 'home.html')

@login_required
def signout(request):
    logout(request)
    return redirect('home')

def signin(request):
    if request.method == 'GET':
        return render(request, 'signin.html', {"form": AuthenticationForm})
    #recibe
    else:
        user = authenticate(
            request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            return render(request, 'signin.html', {"form": AuthenticationForm, "error": "Username or password is incorrect."})

#Envialo a la pagina tareas
        login(request, user)
        return redirect('tasks')

@login_required
def task_detail(request, task_id):
    if request.method == 'GET':
        #Buscar el dato donde el pk =taskid
        task = get_object_or_404(Task, pk=task_id, user=request.user)
        form = TaskForm(instance=task)
        #LLenar el formulario
        return render(request, 'task_detail.html', {'task': task, 'form': form})
    #Si no se visita con el metodo
    else:
        try:
            #Podemos modificar las tareas solo que el usurario sea igual que el usuario
            task = get_object_or_404(Task, pk=task_id, user=request.user)
            #Cuando creamos una tarea ,creamos uno nuevo.Recibe todos los datos de rquest post
            #Genera un nuevo formiulario .Basicamente actualiza
            form = TaskForm(request.POST, instance=task)
            form.save()
            #Envia a pagina tareas
            return redirect('tasks')
        except ValueError:
            return render(request, 'task_detail.html', {'task': task, 'form': form, 'error': 'Error updating task.'})

@login_required
def complete_task(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)
    if request.method == 'POST':
        task.datecompleted = timezone.now()
        task.save()
        return redirect('tasks')

@login_required
def delete_task(request, task_id):
    task = get_object_or_404(Task, pk=task_id, user=request.user)
    if request.method == 'POST':
        task.delete()
        return redirect('tasks')

@login_required
def sensores(request):

    return render(request, 'sensores.html')

def sensores_v2(request):
    cursor = connection.cursor()
    # Establecer la configuración regional en español
    # locale.setlocale(locale.LC_TIME, 'es_ES.UTF-8')

    # fecha_actual = datetime.now()
    # fecha_formateada = fecha_actual.strftime("%d de %B del %Y")
    # print(fecha_formateada)
    try:
        ser = serial.Serial(
            port='COM5',
            baudrate=9600,
            parity=serial.PARITY_EVEN,
            stopbits=serial.STOPBITS_ONE,
            bytesize=serial.EIGHTBITS,
            timeout=3
        )

        def leertemperaturahum():
            print ("lectura temperatura-humedad") #Imprimir en consola este mensaje
            x= b'\x01\x04\x00\x01\x00\x02\x20\x0B' #Trama para solictar temperatura y humedad del sensor
            for i in x:
                envio=chr(i) #TRansformacion de byte a caracter
                ser.write(envio.encode()) #Envio por puerto serial la trama modbus para solictar temp y hum

        ser.isOpen() #Abrir puerto serial con los parametros anteriores
        leertemperaturahum() #Solictar por primera vez datos al sensor

        while True:
            line=ser.readline() #Leer datos de sensor por puerto serial
            if len(line)>0: #Si el tamaño de los datos retornados es mayor a 0, imprimir cadena leida
                print(line)
                try:
                    temp=float((line[3]*256+line[4])/100) #Conversion de datos leidos a variable flotante para temperatura.Recuperar los 16 bits
                    hum=float((line[5]*256+line[6])/100) #Conversion de datos leidos a variable flotante para humedad
                    print (str(temp)+' '+str(hum))
                    # Obtener la lista de objetos datetime
                    datos = [datetime.now(), datetime.now(), datetime.now()]
                    fecha_hora_actual = timezone.now().strftime('%Y-%m-%d %H:%M:%S')
                    # Formatear cada objeto datetime en la lista
                    fechas_formateadas = [dato.strftime("%Y-%m-%d %H:%M:%S") for dato in datos]
                    cursor.execute("INSERT INTO tasks_tablesensor (temperatura, humedad, time_insertar) VALUES (%s, %s, %s)",[temp, hum ,fecha_hora_actual])

                    # cursor.execute("INSERT INTO tasks_tablesensor (temperatura, humedad, time_insertar) VALUES (%s, %s, %s)",[temp, hum , datetime.now()])
                    # cursor.execute("INSERT INTO tasks_sensordata (temperatura, humedad, time_insertar) VALUES (%s, %s, %s)",[temp, hum , fechas_formateadas])

                except Exception as e:
                    print("error lectura"+str(e))
                ser.flush() #limpia buffer esperando nuevos datos de entrada y de salida
                leertemperaturahum() #Se envia la peticion de humedad y temperatura
            time.sleep(2) #Hacer proceso cada 2 segundos

    except serial.SerialException:
        sensor_value = "Error al leer el sensor"

    # datos = SensorData.objects.all()[:50]
    datos = SensorData.objects.all()
    # datos=TableSensor.objects.all()
    paginator = Paginator(datos, 100)
    page_number = request.GET.get('page') or 1
    page = paginator.get_page(page_number)
    pagina_actual = int (page_number)
    paginas = range (1, page.paginator.num_pages + 1) 
    return render(request, "sensores_v2.html", {"posts": page, "paginas": paginas, "pagina_actual": pagina_actual})

    # return render(request, 'sensores_v2.html', {'datos': page}) #funciona


# def graficar_sensor_data(request):
#     # Obtener todos los datos de SensorData
#     datos = SensorData.objects.all()

#     # Preparar los datos para el gráfico (puedes utilizar una lista o diccionario)
#     temperaturas = [dato.temperatura for dato in datos]
#     humedades = [dato.humedad for dato in datos]
#     # fechas = [dato.time_insertar.strftime("%Y-%m-%d %H:%M:%S") for dato in datos]

#     # Pasar los datos a la plantilla
#     context = {
#         'temperaturas': temperaturas,
#         'humedades': humedades,
#         # 'fechas': fechas,
#     }

    # return render(request, 'grafico_v4.html', context)

# import json
# from decimal import Decimal
# def graficar_sensor_data(request):
#     datos = SensorData.objects.all()
#     data_dict = [{
#                   'temperatura': float(item.temperatura),
#                   'humedad': float(item.humedad)} for item in datos]

    
#     data_json = json.dumps(data_dict)
#     return render(request, 'grafico_v5.html', {'data_json': data_json})

def graficar_sensor_data(request):
    # datos = SensorData.objects.all()
    datos=TableSensor.objects.all()

    return render(request, "sensores_v4.html", {"posts": datos})


def sensores_v3(request):
    # return render(request, 'sensores.html')
    datos = SensorData.objects.all()
#     return render(request, 'mostrar_imagen.html', {'imagen_url': imagen_url})

def plantillaHija_1(request):
    return render(request,"plantillaHija_1.html",{})

def plantillaHija_2(request):
    return render(request,"plantillaHija_2.html",{})