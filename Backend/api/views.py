from django.shortcuts import render
from rest_framework import viewsets
from .serializer import *



class sucursalviewset(viewsets.ModelViewSet):
	queryset = Sucursal.objects.all()
	serializer_class = sucursalesserializer
 

 
class miembro_adeudosviewset(viewsets.ModelViewSet):
	queryset = MiembroAdeudos.objects.all()
	serializer_class = miembros_adeudosserializer
 
class mantenimientoviewset(viewsets.ModelViewSet):
	queryset = Mantenimiento.objects.all()
	serializer_class = mantenimientosserializer
 
class prestamoviewset(viewsets.ModelViewSet):
	queryset = Prestamo.objects.all()
	serializer_class = prestamosserializer
 
class consumibleviewset(viewsets.ModelViewSet):
	queryset = Consumible.objects.all()
	serializer_class = consumiblesserializer
 
class equipoviewset(viewsets.ModelViewSet):
	queryset = Equipo.objects.all()
	serializer_class = equiposserializer
 
class equipo_existenciaviewset(viewsets.ModelViewSet):
	queryset = EquipoExistencia.objects.all()
	serializer_class = equipos_existenciaserializer

# Create your views here.
