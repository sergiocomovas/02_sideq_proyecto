<template>
  <!--CARCASA TABLAS-->
  <div class="row items-baseline">
    <div class="col-md-4 q-pa-md text-right">
      <!--CASILLAS-->
      <q-input dense
      label = "ID DE HOTEL"
      class="q-mb-sm"
      v-model="idhotel" filled type="number" hint="HOTELES POSIBLES: 1 y 2" />
      <p class="text-left">🟢 ENTRADA:</p>
      <q-input dense
      mask="YYYY-MM-DD"
      class="q-mb-sm" v-model="fechaEntradaDesde"
      filled type="date" label="Desde" color="green" />
      <q-input dense
      mask="YYYY-MM-DD"
      class="q-mb-sm" v-model="fechaEntradaHasta"
      filled type="date" label="Hasta" color="green" />
      <p class="text-left">🏷️CREADO:</p>
      <q-input dense
      mask="YYYY-MM-DD"
      class="q-mb-sm" v-model="fechaCreacionDesde"
      filled type="date" label="Desde" color="yellow"/>
      <q-input dense
      mask="YYYY-MM-DD"
      class="q-mb-lg" v-model="fechaCreacionHasta"
      filled type="date" label="Hasta" color="yellow"/>

      <p class="text-center">
        <q-btn style="width: 99%;" @click="fetch" color="red">FILTRAR</q-btn>
      </p>
      <p class="text-center">
        <q-btn style="width: 99%;" @click="reset" color="grey-10">RESETEAR</q-btn>
      </p>
      <p class="text-center">VER EN MI <a target="_blank" :href="url">API↗️</a></p>
    </div>

    <div class="col">
      <!--TABLA-->
      <q-table style="height: 550px; width: auto;"
      :rows="respuesta"
      :columns="columns"
      row-key="id"
      :rows-per-page-options="[10, 100]"
      >
      </q-table>
    </div>
  </div>
  <!--FIN CARCASA TABLAS-->
</template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

// COLUMNA
const columns = [
  { name: 'id', label: 'ID', field: 'id' },
  {
    name: 'id_hotel', label: '🏨', field: 'id_hotel', sortable: true,
  },
  {
    name: 'fecha_entrada', label: '🟢 ENTRADA', format: (val) => `${val.substring(0, 10)}`, field: 'fecha_entrada', sortable: true,
  },
  {
    name: 'fecha_creacion', label: '🏷️ CREADO EL', format: (val) => `${val.substring(0, 10)}`, field: 'fecha_creacion', sortable: true,
  },

];

export default defineComponent({
  name: 'BuscadorQ',
  setup() {
    const fechaEntradaDesde = ref('2022-08-01');
    const fechaEntradaHasta = ref('2022-12-30');
    const fechaCreacionDesde = ref('2022-08-03');
    const fechaCreacionHasta = ref('2022-12-04');
    const idhotel = ref('1');

    const respuesta = ref();
    const url = ref();

    const fetch = () => {
      if (fechaEntradaDesde.value === '') {
        fechaEntradaDesde.value = '2022-08-01';
      }
      if (fechaEntradaHasta.value === '') {
        fechaEntradaHasta.value = '2023-01-01';
      }
      if (fechaCreacionDesde.value === '') {
        fechaCreacionDesde.value = '2022-08-01';
      }
      if (fechaCreacionHasta.value === '') {
        fechaCreacionHasta.value = '2023-01-01';
      }
      if (idhotel.value === '') {
        idhotel.value = '0';
      }
      const peti = `https://tbot.comovas.es/tareabuscadorapi/${fechaCreacionDesde.value}/${fechaCreacionHasta.value}/${fechaEntradaDesde.value}/${fechaEntradaHasta.value}/${idhotel.value}`;
      axios
        .get(peti)
        .then((response) => {
          respuesta.value = response.data;
          url.value = peti;
        });
    };
    fetch();

    const reset = () => {
      fechaEntradaDesde.value = '2022-08-01';
      fechaEntradaHasta.value = '2022-12-30';
      fechaCreacionDesde.value = '2022-08-03';
      fechaCreacionHasta.value = '2022-12-04';
      idhotel.value = '1';
      fetch();
    };

    return {
      idhotel,
      fechaEntradaDesde,
      fechaCreacionDesde,
      fechaEntradaHasta,
      fechaCreacionHasta,
      respuesta,
      url,
      columns,
      fetch,
      reset,
    };
  },
});
</script>
