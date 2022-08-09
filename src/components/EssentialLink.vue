<template><div>
  <div class="q-ml-md">
  <h6 class="q-ma-md">🤞HOLA, ¿Cómo va?</h6>
  <div class="q-ma-lg">
    <q-img  src="../assets/sergio.png" alt="SERGIO LLUC A PEU 2022" />
  </div>
  <span>Se presentan las tareas solicitadas. Recueden que:</span>
  <ul class="q-mr-lg">
    <li>El front-end de esta página esta hecho con la combinación QUASAR+VUE3+VITE cuyo dominio me
      ha suponido unas pruebas que también he incluido en el proyecto. </li>
    <li>He trabajado con ESLint (Airbnb) para mostrar
      un código adecuado para un equipo de trabajo.</li>
    <li>Todas las peticiones de datos se hacen a una API vía AXIOS.</li>
    <li>En el apartado TAREAS se muestran todos los ejercicios propuestos en la TAREA.</li>
    <li>El código empleado, incluido el PHP, sentencias SQL
      para crear la tabla y contenido de la mismas están disponibles en la sección CÓDIGO.</li>
  </ul>
  <span>Agradeciendo la oportunidad, me despido hasta la próxima ocasión 😉 ~SERGIO</span>
  </div>
</div></template>

<script>
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'EssentialLink',
});
</script>
