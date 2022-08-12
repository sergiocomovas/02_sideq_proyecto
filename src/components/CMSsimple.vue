<template>
  <div class="q-pa-md q-mb-xl text-black text-body2"
  align="center"
  style="border-radius: 10px; background-color:darkgrey;" >
    <h6>MARKDOWN</h6>
    <Markdown :source="fuente" />
    <br><br><code>Fuente: ARCHIVO MD EN ASSETS INTERNOS DE ESTA PWA</code>

  </div>
</template>

<script>
import { defineComponent } from 'vue';
import Markdown from 'vue3-markdown-it';
import fuente from 'assets/markdown.markdown?raw';

export default defineComponent({
  name: 'CMSSimple',
  components: {
    Markdown,
  },
  setup() {
    return {
      fuente,
    };
  },
});
</script>
