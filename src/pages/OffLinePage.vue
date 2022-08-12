<template>
  <div class="fullscreen bg-red-9 text-white text-center q-pa-md flex flex-center">
    <div>
      <div style="font-size: 30vh">
        🚫
      </div>

      <div class="text-h2" style="opacity:.4">
        SIN CONEXIÓN
      </div>

      <q-btn
        class="q-mt-xl"
        color="white"
        text-color="red-9"
        unelevated
        to="/"
        label="REINTENTAR"
        no-caps
      />
    </div>
  </div>
</template>

<script>
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'ErrorNotFoundPage',
});
</script>
