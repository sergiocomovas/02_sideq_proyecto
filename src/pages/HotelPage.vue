<template>
  <div class="q-pr-sm"><h1 class="q-pt-xl text-weight-bolder">Prueba Técnica</h1>
<!--TODO: PARA ARCHIVOS MARKDOWN https://vitejs.dev/guide/assets.html#importing-asset-as-url-->

<!--PREGUNTA 1-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 1:</h4>
      </div>
      <div class="col-md-9"><h6>
        Para una conexión a la base de datos en local:
        <a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/assets/conf.ini" target="_blank">
        ARCHIVO INI (CONEXIÓN)↗️</a>,
        <a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/assets/palmadb.sql" target="_blank">
        ARCHIVO IMPORTACIÓN BASE DE DATOS (SQL)↗️</a>,
        <a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/assets/reservas.sql" target="_blank">
        DATOS DE LA TABLA 'RESERVAS' EN ESTAS TAREAS↗️</a>.
        También puede ir al apartado 📁
        <router-link to="about">Código</router-link>
        para ver el resto de archivos usados en esta tarea.</h6>
      </div>
    </div>
  </div>

  <!--PREGUNTA 2.1-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 2.1:</h4>
      </div>
      <div class="col-md-9"><h6>
      Para la tabla (con datos de muestra) se muestran, a continuación,
      las reservas con fecha de entrada a 1 de septiembre 2022:
      <br><br>
        <Tarea2P></Tarea2P>
      </h6></div>
    </div>
  </div>

  <!--PREGUNTA 2.2-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 2.2:</h4>
      </div>
      <div class="col-md-9"><h6>
      Según el <a :href="imgtarea"
      target="_blank">ENUNCIADO↗️</a> del ejercico, se presentan las reservas con
      estáncia entre el 10 de septiembre y 15 de septiembre.
      Entendiéndose como estancia los clientes que están en el hotel algún día entre esas fechas.
      <br><br>
      </h6></div>
    </div><Tarea2P2/>
  </div>

  <!--PREGUNTA 2.3-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 2.3:</h4>
      </div>
      <div class="col-md-9"><h6>
      Aquí se muestra el total de paxes por mes desde el mes actual hasta final de año.
      <br><br><Tarea2P3/>
      </h6></div>
    </div>
  </div>

  <!--PREGUNTA 3-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 3:</h4>
      </div>
      <div class="col-md-9"><h6>
      Aquí se muestra una pantalla de buscador de reservas,
      que tenga los filtros
      <kbd>id_hotel</kbd>, <kbd>fecha_entrada</kbd> y <kbd>fecha_creacion</kbd>
      y que al buscar se muestren las reservas que SÍ cumplan los filtros.
      <br><br>
      </h6></div>
    </div><TareaBuscador/>
  </div>

  <div class="text-h6 text-center text-yellow-10 q-ma-xl">
    Vea <a href="/#about">AQUÍ</a> el código de las Tareas
  </div>

</div></template>

<script>
import { defineComponent } from 'vue';
import TareaBuscador from 'components/TareaBuscador.vue';
import Tarea2P from 'components/Tarea2P.vue';
import Tarea2P2 from 'components/Tarea2P2.vue';
import Tarea2P3 from 'components/Tarea2P3.vue';
import imgtarea from 'assets/tarea.jpg';

export default defineComponent({
  name: 'HotelPage',
  setup() {
    return { imgtarea };
  },
  components: {
    TareaBuscador,
    Tarea2P,
    Tarea2P2,
    Tarea2P3,
  },

});
</script>
