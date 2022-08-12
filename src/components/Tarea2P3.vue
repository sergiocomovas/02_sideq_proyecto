<template><div>

  <!--CARCASA TABLAS-->
  <div class="row items-baseline">
    <div class="col-md-4 q-pa-md text-center">
      <!--CASILLAS-->
      <h6 style="color:darkred; ">MESES</h6>
        <q-range
        v-model="meses"
        :min="8"
        :max="12"
        color="red-10"
        vertical
        label-always
        switch-label-side
        :left-label-value="'MES '+ meses.min"
        :right-label-value="'MES ' + meses.max"
        @change="fetch"
      />
      <p class="text-center q-mt-md">
        VER EN MI <a target="_blank" :href="url">API↗️</a>
      </p>

      <p>MES ACTUAL: <span style="color:darkred">{{ mes }}</span></p>
      <q-btn @click="cambiarmes" color="red-10">MOSTRAR</q-btn>

    </div>
    <div class="col-md-4">
      <!--TABLA-->
      <div class="col q-pa-md">
      <!--TABLA-->
      <q-table style="height: 400px; min-width: 30px;"
      :rows="respuesta"
      :columns="columns"
      row-key="id"
      :rows-per-page-options="[10, 20]"
      >
      </q-table>
      </div>
    </div>
  </div>
  <!--FIN CARCASA TABLAS-->

</div></template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

// COLUMNA
const columns = [
  { name: 'MES', label: 'MES', field: 'MES' },
  { name: 'TOTAL', label: '👪  PAXES', field: 'TOTAL' },

];

export default defineComponent({
  name: 'Tarea2P3',
  setup() {
    const meses = ref({ min: 8, max: 12 });
    const respuesta = ref();
    const url = ref();
    const mes = ref();
    const fetch = () => {
      axios
        .get(`https://tbot.comovas.es/tarea23api/${meses.value.min}/${meses.value.max}`)
        .then((response) => {
          respuesta.value = response.data;
          url.value = `https://tbot.comovas.es/tarea23api/${meses.value.min}/${meses.value.max}`;
        });
    };
    fetch();
    const cambiarmes = () => {
      meses.value.min = mes.value;
      meses.value.max = 12;
      fetch();
    };
    const mesactual = () => {
      const today = new Date();
      const month = today.getMonth() + 1;
      mes.value = month;
    };
    mesactual();
    return {
      meses, fetch, respuesta, url, columns, mesactual, mes, cambiarmes,
    };
  },
});
</script>
