<template><div>
  <div class="q-ml-md">
  <h6 class="q-ma-md">🤞HOLA, ¿Cómo vas?</h6>
  <div class="q-ma-lg">
    <q-img loading="lazy" src="../assets/sergio.png" alt="SERGIO LLUC A PEU 2022" />
  </div>
  <span>Se presentan las tareas solicitadas. Recueden que:</span>
  <ul class="q-mr-lg">
    <li>El front-end de esta página esta hecho con la combinación
    QUASAR+VUE3+VITE cuyo dominio me ha suponido unas pruebas de repaso
    [ <router-link style="color:yellow" to="pruebas">1</router-link> ]
    [ <router-link style="color:yellow" to="pruebas2">2</router-link> ]
    [ <router-link style="color:yellow" to="pruebas3">3</router-link> ]
    que también he incluido en el proyecto. </li>
    <li>He trabajado con ESLint (Airbnb) para mostrar
      un código adecuado para un equipo de trabajo.</li>
    <li>Todas las peticiones de datos se hacen a una API vía AXIOS
      hacia el back-end programado en PHP-SQL (con el framework CODEIGNITER).</li>
    <li>En el apartado
    <router-link to="tareas" style="color:yellow">💎 TAREAS</router-link>
    se muestran todos los ejercicios propuestos en la TAREA.</li>
    <li>El código empleado, incluido el PHP, sentencias SQL
      para crear la tabla y contenido de la mismas están disponibles en la sección
      <router-link style="color:yellow" to="about"> CÓDIGO</router-link>.</li>
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
