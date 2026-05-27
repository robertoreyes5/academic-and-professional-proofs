from django import forms
from .models import Task

class TaskForm(forms.ModelForm):
    class Meta:
        model = Task
        fields = ['title', 'description', 'important']
        #Tenemos clases especiales que son widgets.Tener diccionario
        #para
        widgets={
            'title':forms.TextInput(attrs={'class': 'from-control'}),
            'description':forms.TextInput(attrs={'class': 'from-control'}),
            'important':forms.CheckboxInput(attrs={'class': 'from-ckeck-input m-auto'}),

        }

class SensorDataForm(forms.Form):
    value = forms.DecimalField(label='Valor')