<template>
  <div class="fullscreen bg-red-10 text-white text-center q-pa-md flex flex-center">
    <div>
      <div style="font-size: 30vh">
        404
      </div>

      <div class="text-h2" style="opacity:.4">
        ERROR
      </div>

      <q-btn
        class="q-mt-xl"
        color="white"
        text-color="red-10"
        unelevated
        to="/"
        label="VOLVER"
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
