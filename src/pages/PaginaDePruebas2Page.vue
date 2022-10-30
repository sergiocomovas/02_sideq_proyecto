<template><div class="q-pr-sm">
  <h1 class="q-pt-xl text-weight-bolder">Página de Pruebas 2</h1>
  <PruebaTablaSimple/>
  <hr>
  <PruebaTablaFecha />
  <hr>
  <PruebaCSS />
</div></template>

<script>
import { defineComponent } from 'vue';
import PruebaTablaSimple from 'components/PruebaTablaSimple.vue';
import PruebaTablaFecha from 'components/PruebaTablaFecha.vue';
import PruebaCSS from 'components/PruebaCSS.vue';

export default defineComponent({
  name: 'PaginaDePruebas2Page',
  components: {
    PruebaTablaSimple,
    PruebaTablaFecha,
    PruebaCSS,
  },
});
</script>
