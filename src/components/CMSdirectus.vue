<template>
  <div class="q-pa-md q-mb-xl text-black text-body2"
  align="center"
  style="border-radius: 10px; background-color:darkgrey;" >
    <h6>CMD DIRECTUS</h6>
      <q-img loading spinner-color="white" :src="`https://zsjhoktk.directus.app/assets/`+respuesta.data.imagen" :ratio="16/9" alt="imagen"/>

    <div v-html="respuesta.data.texto_enriquecido" ></div>
    <br><code>Fuente: <a target="_blank" href="https://zsjhoktk.directus.app/items/blog/1">DIRECTUS API</a></code>
  </div>
</template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

export default defineComponent({
  name: 'CMSDirectus',
  setup() {
    const respuesta = ref({
      data: {
        texto_enriquecido: 'Cargando datos...',
        imagen: '6770dd11-86f8-4929-a546-3d7a78127ec8/loading.png',
      },
    });
    const fetch = async () => {
      await axios
        .get('https://zsjhoktk.directus.app/items/blog/1')
        .then((response) => {
          respuesta.value = response.data;
        });
    };
    fetch();
    return {
      respuesta,
      fetch,
    };
  },
});
</script>
