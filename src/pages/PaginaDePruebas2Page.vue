<template><div>
  <h1>Página de Pruebas 2</h1>
  <PruebaTablaSimple/>
  <hr>
  <PruebaTablaFecha />
</div></template>

<script>
import { defineComponent } from 'vue';
import PruebaTablaSimple from 'components/PruebaTablaSimple.vue';
import PruebaTablaFecha from 'components/PruebaTablaFecha.vue';

export default defineComponent({
  name: 'PaginaDePruebas2Page',
  components: {
    PruebaTablaSimple,
    PruebaTablaFecha,
  },
});
</script>
