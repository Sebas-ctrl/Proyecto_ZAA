from rest_framework import serializers
from .models import *

class sucursalesserializer(serializers.ModelSerializer):
	class Meta:
		model = Sucursal
		fields = '__all__'
  

class miembros_adeudosserializer(serializers.ModelSerializer):
	class Meta:
		model = MiembroAdeudos
		fields = '__all__'
  
class mantenimientosserializer(serializers.ModelSerializer):
	class Meta:
		model = Mantenimiento
		fields = '__all__'
  
class prestamosserializer(serializers.ModelSerializer):
	class Meta:
		model = Prestamo
		fields = '__all__'
  
class consumiblesserializer(serializers.ModelSerializer):
	class Meta:
		model = Consumible
		fields = '__all__'
  
class equiposserializer(serializers.ModelSerializer):
	class Meta:
		model = Equipo
		fields = '__all__'
  
class equipos_existenciaserializer(serializers.ModelSerializer):
	class Meta:
		model = EquipoExistencia
		fields = '__all__'