<template><div>

  <!--CARCASA TABLAS-->
  <div class="row items-top">
    <div class="col q-pa-md text-center">
      <!--CASILLAS-->
      <q-date
      v-model="fechas"
      range mask="YYYY-MM-DD"
      @range-end="fetch"
    />

      <div class="text-center" style="width: 100%;">

      <!--PERIODO: Del {{ fechas.from }} hasta {{ fechas.to }}<br>
      <span style="font-weight:bolder;"> TOTAL PERIODO: {{ personas }} en el hotel.</span> <br>-->
      <p class="text-center" style="font-weight: bold;" v-html="mensajesuma"></p>
      Ver en mi <a :href="api" target="_blank">API</a>
      <br>

      <q-btn rounded color=red-9 @click="restablecerform">RESTABLECER 📅</q-btn>
      </div>

    </div>
    <div class="col-md-8 q-pa-md">
      <!--TABLA-->
      <q-table style="height: 450px; width: auto;"
      :rows="respuesta"
      :columns="columns"
      row-key="id"
      :rows-per-page-options="[10, 20]"
      >
    </q-table>
    </div>
  </div>
  <!--FIN CARCASA TABLAS-->

</div></template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

// COLUMNA
const columns = [
  { name: 'id', label: 'ID', field: 'id' },
  {
    name: 'fecha_entrada', label: '🟢 ENTRADA', format: (val) => `${val.substring(0, 10)}`, field: 'fecha_entrada', sortable: true,
  },
  {
    name: 'fecha_salida', label: '🔴 SALIDA', format: (val) => `${val.substring(0, 10)}`, field: 'fecha_salida', sortable: true,
  },
];

export default defineComponent({
  name: 'Tarea2P1',
  setup() {
    const respuesta = ref();
    const fechas = ref({ from: '2022-09-10', to: '2022-09-15' });
    const personas = ref();
    const api = ref();
    const mensajesuma = ref();
    const fetch = () => {
      const fechadesde = fechas.value.from;
      const fechahasta = fechas.value.to;
      axios
        .get(`https://tbot.comovas.es/tarea22api/${fechadesde}/${fechahasta}`)
        .then((response) => {
          respuesta.value = response.data;
          mensajesuma.value = response.data.length === 1
            ? `TOTAL: ${response.data.length} reserva en los hoteles en periodo del ${fechas.value.from} al ${fechas.value.to}.`
            : `TOTAL: ${response.data.length} reservas en los hoteles en periodo del ${fechas.value.from} al ${fechas.value.to}.`;

          api.value = `https://tbot.comovas.es/tarea22api/${fechadesde}/${fechahasta}`;
        });
    };
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
