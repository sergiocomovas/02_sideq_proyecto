<template>
  <div class="q-pr-sm">
    <h1 class="q-pt-xl text-weight-bolder">Página de Pruebas 3</h1>
    <CMSsimple/>
    <hr>
    <CMSdirectus/>
  </div>
</template>

<script>
import { defineComponent } from 'vue';
import CMSsimple from 'components/CMSsimple.vue';
import CMSdirectus from 'components/CMSdirectus.vue';

export default defineComponent({
  name: 'PaginaDePruebas3Page',
  components: {
    CMSsimple,
    CMSdirectus,
  },
});
</script>
