<template><div>
  <h2>Uso de Props</h2>
  <h3>Nombre:  <span style="
  text-decoration:underline overline;">{{ name }}
  </span>
  -- Edad:  <span style="
  text-decoration:underline overline;">{{ age }}</span> </h3>
  <q-banner class="q-ma-md">
    Apuntes:<hr>
    Lo único que hay que recordar que si quieres
    usar las propos en el setup hay que pasarlas por paréntersis().
  </q-banner>
</div></template>

<script>
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'HolaProfileWithProps',
  props: {
    name: String,
    age: Number,
  },
  setup(props) {
    console.log(`Esto es la prop: ${props.name}`);
  },
});
</script>
