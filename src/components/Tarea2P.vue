<template><div>

  <q-banner class="text-white bg-red-7" style="border-radius: 10px;">
    ℹ️ Para su interés: TODOS los registros de la tabla <code>reservas</code> se pueden consultar en la API en formato <a download target="_blank" href="https://tbot.comovas.es/tareatodotabla">HTML↗️</a>, <a  target="_blank" download href="https://tbot.comovas.es/tareatodojson">JSON↗️</a> y <a target="_blank"  download href="https://tbot.comovas.es/tareatodoxml">XML↗️</a>.
  </q-banner>

  <!--CARCASA TABLAS-->
  <div class="row items-top">
    <div class="col-sm-5 q-pa-md text-center">
      <!--CASILLAS-->
        <div style="max-width: 300px">

          <div class="q-pa-md" style="max-width: 300px">
            <q-input filled v-model="date" mask="####-##-##" @keypress.enter="fetch">
              <template v-slot:append>
                <q-icon name="event" class="cursor-pointer">
                  <q-popup-proxy cover transition-show="scale"
                  transition-hide="scale" @hide="fetch">
                    <q-date v-model="date" mask="YYYY-MM-DD">
                      <div class="row items-center justify-end">
                        <q-btn v-close-popup label="VALE" color="primary" flat />
                      </div>
                    </q-date>
                  </q-popup-proxy>
                </q-icon>
              </template>
            </q-input>
          </div>

          <p class="text-body2 text-center">
            Pruebe a buscar el día 14 de septiembre o de octubre.
          </p>

          <p class="text-center">VER EN MI <a target="_blank" :href="url">API↗️</a></p>

        </div>

    </div>
    <div class="col q-pa-md">
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

];

export default defineComponent({
  name: 'Tarea2P',
  setup() {
    const date = ref('2022-09-01');
    const respuesta = ref();
    const url = ref();

    const fetch = () => {
      axios
        .get(`https://tbot.comovas.es/tarea21api/${date.value}`)
        .then((response) => {
          respuesta.value = response.data;
          url.value = `https://tbot.comovas.es/tarea21api/${date.value}`;
        });
    };
    fetch();

    return {
      date, fetch, columns, respuesta, url,
    };
  },
});
</script>
