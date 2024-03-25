<template>
    <div>
      <h2>Mantenimiento a equipos </h2>
      <ul>
        <li v-for="aparato in aparatos" :key="aparato.id">
          <div class="aparato-info">
            <img :src="aparato.imagen" alt="Imagen de {{ aparato.nombre }}" class="aparato-imagen">
            <div class="aparato-details">
              <h3>{{ aparato.nombre }}</h3>
              <p>{{ aparato.descripcion }}</p>
              <span v-if="aparato.enMantenimiento">(En Mantenimiento)</span>
              <span v-else-if="aparato.reparado">(Reparado)</span>
              <span v-else>(Disponible)</span>
              <button @click="marcarEnMantenimiento(aparato)" v-if="!aparato.enMantenimiento && !aparato.reparado">En Mantenimiento</button>
              <button @click="marcarReparado(aparato)" v-if="aparato.enMantenimiento">Reparado</button>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        aparatos: [
          { id: 1, nombre: 'Cinta de correr', descripcion: 'Una cinta para correr estándar', enMantenimiento: false, reparado: false, imagen: 'url_de_la_imagen' },
          { id: 2, nombre: 'Bicicleta estática', descripcion: 'Una bicicleta estática para entrenamiento', enMantenimiento: false, reparado: true, imagen: 'url_de_la_imagen' },
          { id: 3, nombre: 'Máquina de pesas', descripcion: 'Una máquina de pesas para ejercicios de fuerza', enMantenimiento: true, reparado: false, imagen: 'url_de_la_imagen' }
        ]
      };
    },
    methods: {
      marcarEnMantenimiento(aparato) {
        aparato.enMantenimiento = true;
      },
      marcarReparado(aparato) {
        aparato.enMantenimiento = false;
        aparato.reparado = true;
      }
    }
  };
  </script>
  
  <style scoped>
  .aparato-info {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
  }
  
  .aparato-imagen {
    width: 100px;
    height: 100px;
    margin-right: 20px;
  }
  
  .aparato-details {
    flex: 1;
  }
  
  button {
    margin-top: 10px;
  }
  </style>
  