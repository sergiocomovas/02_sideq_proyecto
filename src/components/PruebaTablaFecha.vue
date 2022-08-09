<template><div>
 <h2>PRUEBA FECHAS</h2>
 <div class="row">

 <!--SELECTOR DE FECHAS-->
  <div class="col-md-4 q-pa-md">
    <q-date
      v-model="fechas"
      range mask="YYYY-MM-DD"
      @range-end="fetch"
    />

    <p class="text-center">

      <!--PERIODO: Del {{ fechas.from }} hasta {{ fechas.to }}<br>
      <span style="font-weight:bolder;"> TOTAL PERIODO: {{ personas }} en el hotel.</span> <br>-->
      <span style="font-weight: bold;" v-html="mensajesuma"></span>
     Ver en mi <a :href="api" target="_blank">API</a>
      <br>

      <q-btn rounded color=red-9 @click="restablecerform">RESTABLECER 📅</q-btn>
    </p>

  </div>
 <!--FIN SELECTOR DE FECHAS-->

 <!--MOSTRAR RESULTADO-->
 <div class="col q-pa-md">
    <q-table style="height: 450px; width: auto;"
      :rows="respuesta"
      :columns="columns"
      row-key="id"
      :rows-per-page-options="[10, 20]"
    >
    </q-table>
 </div>
 <!--FIN MOSTRAR RESULTADO-->

</div>
</div></template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

// COLUMNA
const columns = [
  { name: 'qh_nombre', label: '🐾 NOMBRE', field: 'qh_nombre' },
  {
    name: 'qh_fentrada', label: '🟢 ENTRADA', format: (val) => `${val.substring(0, 10)}`, field: 'qh_fentrada', sortable: true,
  },
  {
    name: 'qh_fsalida', label: '🔴 SALIDA', format: (val) => `${val.substring(0, 10)}`, field: 'qh_fsalida', sortable: true,
  },
];

export default defineComponent({
  name: 'PruebaTablaFecha',
  setup() {
    const respuesta = ref();
    const fechas = ref({ from: '2022-08-01', to: '2022-08-15' });
    const personas = ref();
    const api = ref();
    const mensajesuma = ref(); // Opción para evitar un bugueo de VITE.
    const fetch = () => {
      const fechadesde = fechas.value.from;
      const fechahasta = fechas.value.to;
      axios
        .get(`https://tbot.comovas.es/qapi1/${fechadesde}/${fechahasta}`)
        .then((response) => {
          respuesta.value = response.data;

          /* personas.value = response.data.length === 1
          ? `${response.data.length} persona`
          : `${response.data.length} personas`; */

          mensajesuma.value = response.data.length === 1
            ? `TOTAL: ${response.data.length} persona en el hotel en periodo del ${fechas.value.from} al ${fechas.value.to}.`
            : `TOTAL: ${response.data.length} personas en el hotel en periodo del ${fechas.value.from} al ${fechas.value.to}.`;

          api.value = `https://tbot.comovas.es/qapi1/${fechadesde}/${fechahasta}`;
        });
    };
    // watch([fechas], () => { fetch(); });
    fetch();
    return {
      fechas,
      fetch,
      respuesta,
      columns,
      personas,
      mensajesuma,
      api,
      restablecerform() {
        fechas.value = { from: '2022-08-01', to: '2022-08-15' }; fetch();
      },
    };
  },
});
</script>
