<template><div>
  <h2>PRUEBA SIMPLE</h2>

  <q-range type="range" :min="1" :max="8"
  filled id="busca" v-model="busca" >
  </q-range>

<div style="height: 30px;">
  <p v-if="url" class="text-center"><span style="color:darkgray">
  Monstrando los registros:</span> del ID {{ busca.min }} al ID {{ busca.max }}
  en mi <a target="_blank" :href="url">API</a> </p>
  <p v-else class="text-center">Arrastra 🔴 para buscar en mi API</p>
</div>

<!--TABLA-->

<div>
  <q-table style="height: 350px;"
      :rows="respuesta"
      :columns="columns"
      row-key="id"
      :rows-per-page-options="[10, 20]"
  >

</q-table>
</div>

<!--FIN DE LA TABLA-->

</div>
</template>

<script>
import { defineComponent, ref, watch } from 'vue';
import axios from 'axios';

// COLUMNA
const columns = [
  { name: 'id', label: '🔢 ID', field: 'id' },
  { name: 'qh_nombre', label: '🐾 NOMBRE', field: 'qh_nombre' },
  { name: 'qh_tipo', label: '🅰️ Tipo', field: 'qh_tipo' },
  { name: 'qh_telefono', label: '📞 Contacto', field: 'qh_telefono' },
];

export default defineComponent({
  name: 'PruebaTablaSimple',
  setup() {
    const busca = ref({ min: 0, max: 0 });
    const respuesta = ref();
    const url = ref();
    watch([busca], () => {
      axios
        .get(`https://tbot.comovas.es/qapi0/${busca.value.min}/${busca.value.max}`)
        .then((response) => { // this.respuesta = response.data;
          // console.log(response.data);
          respuesta.value = response.data;
          url.value = `https://tbot.comovas.es/qapi0/${busca.value.min}/${busca.value.max}`;
        });
    });
    return {
      busca, respuesta, columns, url,
    };
  },
});
</script>
