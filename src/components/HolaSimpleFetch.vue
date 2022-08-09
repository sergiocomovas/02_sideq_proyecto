<template><div>
  <h2>Simple Fetch</h2>

<h6>CARGA CON FETCH()</h6>

<p style="font-size: 1rem; text-align:right;">💽 URL API: <code>https://jsonplaceholder.typicode.com/users</code></p>
  <ul v-if="users">
    <li v-for="user in users" :key="user.id">
    {{ user.id }}) {{ user.name }} -- {{ user.email }}
    </li>
  </ul>

<!--<div v-if="listo"> El problema era que no estaba cargando por referencia.-->
<div>
  <q-table
      title="CARGA CON AXIOS"
      :rows="rows"
      :columns="columns"
      row-key="name"
      :filter="filter"
  >

    <!--PARA BUSCAR-->
    <template v-slot:top-right>
        <q-input dense debounce="300" v-model="filter" placeholder="Buscar aquí..">
          <template v-slot:append>
            <q-icon name="search" />
          </template>
        </q-input>
    </template>
    <!--FIN: PARA BUSCAR-->

</q-table>
</div>

  <q-banner class="q-ma-sm">
  Apuntes:<hr>
  Gracias a este paisano econtré la solución: <a target="_blank" href="https://www.koderhq.com/tutorial/vue/http-axios/">https://www.koderhq.com/tutorial/vue/http-axios/</a> <br>
  LUEGO: ¡PASA LOS VALORES POR REF!!!!!! (aunque encontré otra forma XD)
  </q-banner>
</div></template>

<script>
import { defineComponent, onMounted, ref } from 'vue';
import axios from 'axios';

const columns = [
  { name: 'id', label: '🔢 ID', field: 'id' },
  { name: 'name', label: '👤 Nombre', field: 'name' },
  { name: 'email', label: '📧 Correo Electrónico', field: 'email' },
];

const rows = ref([]);

export default defineComponent({
  name: 'HolaSimpleFetch',
  setup() {
    const users = ref(null);
    const listo = ref(false);
    // onMounted(() => { const response = fetch('http:https://jsonplaceholder.typicode.com/users'); }); <== tiene que ser asinc
    onMounted(async () => {
      const response = await fetch('https://jsonplaceholder.typicode.com/users');
      users.value = await response.json();
    });
    return {
      users, columns, rows, listo, filter: ref(''),
    };
  },
  mounted() {
    axios
      .get('https://jsonplaceholder.typicode.com/users')
      .then((response) => {
        this.rows = response.data;
        this.listo = true;
        // console.log(this.rows);
        // console.log(this.listo);
      });
  },
});
</script>
