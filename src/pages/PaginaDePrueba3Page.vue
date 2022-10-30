<template>
  <div class="q-pr-sm">
    <h1 class="q-pt-xl text-weight-bolder">Página de Pruebas 3</h1>
    <CMSsimple/>
    <hr>
    <CMStelegram url='http://telegra.ph/CONCURSO-VELITES-01-19'></CMStelegram>
    <hr>
    <CMSstrapi fuente="https://sbot.comovas.es/api/simpleblogs/1" />
    <hr>
    <!--<CMSgsx datosgsx="DATOS GSX" />-->
    <!--<CMSdirectus/>-->
  </div>
</template>

<script>
import { defineComponent } from 'vue';
import CMSsimple from 'components/CMSsimple.vue';
// import CMSdirectus from 'components/CMSdirectus.vue';
import CMStelegram from 'components/CMStelegram.vue';
import CMSstrapi from 'components/CMSstrapi.vue';
// import CMSgsx from 'components/CMSgsx.vue';

export default defineComponent({
  name: 'PaginaDePruebas3Page',
  components: {
    CMSsimple,
    // CMSdirectus,
    CMStelegram,
    CMSstrapi,
    // CMSgsx,
  },
});
</script>
