<template>
  <div class="text-h6 q-pr-sm">
     <h1 class="q-pt-xl text-weight-bolder">Código</h1>
     VUE3 usa pequeños componentes para facilitar el desarrollo separarándolo en pequeñas partes.
     Para la TAREA he usado los siguientes componentes:
      <ul>
        <li><a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/components/Tarea2P.vue" target="_blank">TAREA 2P↗️</a></li>
        <li><a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/components/Tarea2P2.vue" target="_blank">TAREA 2P2↗️</a></li>
        <li><a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/components/Tarea2P3.vue" target="_blank">TAREA 2P3↗️</a></li>
        <li><a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/components/TareaBuscador.vue" target="_blank">TAREA BUSCADOR↗️</a></li>
      </ul>
      En PHP se ha usado un MODELO y un CONTROLADOR (<a href="https://codeigniter.com/user_guide/index.html" target="_blank">CODEIGNITER 4</a>):
      <ul>
          <li><a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/assets/modelo.php" target="_blank">MODELO↗️</a></li>
          <li><a href="https://github.com/sergiocomovas/02_sideq_proyecto/blob/master/src/assets/controlador.php" target="_blank">CONTROLADOR↗️</a></li>
          <li>En la tarea cualquier llamada al backend está señalizada con la palabra API
          pudiendo hacer click y ver los datos que recibe la aplicación dinámicamente
          para generar y mostrar los listados de datos. (Por ejemplo:
          <a href="https://tbot.comovas.es/tareatodojson" target="_blank">
            datos completos en json</a> o en <a href="https://tbot.comovas.es/tareatodotabla" target="_blank">tabla html</a>)</li>
      </ul>
    Para más infomación: puede consultar mi blog para ver otros proyectos en
    <a href="https://web.comovas.es/dev_php_1/" target="_blank">PHP</a>, consultar mi <a href="https://www.linkedin.com/in/srgrigo/" target="_blank">Linkedin</a> o <a href="https://github.com/sergiocomovas?tab=repositorie" target="_blank">Github</a>.
    <div class="q-pa-lg"></div>
  </div>
</template>

<script>
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'SobreEstoPage',
});
</script>
