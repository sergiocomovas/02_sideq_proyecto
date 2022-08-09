<template>
  <div><h1>Prueba Técnica</h1>
<!--TODO: PARA ARCHIVOS MARKDOWN https://vitejs.dev/guide/assets.html#importing-asset-as-url-->

<!--PREGUNTA 1-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 1:</h4>
      </div>
      <div class="col"><h6>
        Para una conexión a la base de datos en local:
        <a :href="urlINI" target="_blank">
        ARCHIVO INI (CONEXIÓN)↗️</a>,
        <a :href="urlBASE" target="_blank">
        ARCHIVO IMPORTACIÓN BASE DE DATOS (SQL)↗️</a>,
        <a :href="urlTABLA" target="_blank">
        DATOS DE LA TABLA 'RESERVAS' EN ESTAS TAREAS↗️</a>.</h6>
      </div>
    </div>
  </div>

  <!--PREGUNTA 2.1-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 2.1:</h4>
      </div>
      <div class="col"><h6>
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
      <div class="col"><h6>
      Según el <a href="/src/assets/tarea.jpg"
      target="_blank">ENUNCIADO↗️</a> del ejercico, se presentan las reservas con
      estáncia entre el 10 de septiembre y 15 de septiembre.
      Entendiéndose como estancia los clientes que están en el hotel algún día entre esas fechas.
      <br><br><Tarea2P2/>
      </h6></div>
    </div>
  </div>

  <!--PREGUNTA 2.3-->
  <div>
    <div class="row items-baseline">
      <div class="col-md-3 q-pa-md text-right">
        <h4>TAREA 2.3:</h4>
      </div>
      <div class="col"><h6>
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
      <div class="col"><h6>
      Aquí se muestra una pantalla de buscador de reservas,
      que tenga los filtros
      <kbd>id_hotel</kbd>, <kbd>fecha_entrada</kbd> y <kbd>fecha_creacion</kbd>
      y que al buscar se muestren las reservas que SÍ cumplan los filtros.
      <br><br> <TareaBuscador/>
      </h6></div>
    </div>
  </div>

</div></template>

<script>
import { defineComponent } from 'vue';
import TareaBuscador from 'components/TareaBuscador.vue';
import Tarea2P from 'components/Tarea2P.vue';
import Tarea2P2 from 'components/Tarea2P2.vue';
import Tarea2P3 from 'components/Tarea2P3.vue';
import urlINI from 'assets/conf.ini.md?url';
import urlBASE from 'assets/palmadb.sql.md?url';
import urlTABLA from 'assets/reservas.sql.md?url';

export default defineComponent({
  name: 'HotelPage',
  setup() {
    return { urlINI, urlBASE, urlTABLA };
  },
  components: {
    TareaBuscador,
    Tarea2P,
    Tarea2P2,
    Tarea2P3,
  },

});
</script>
