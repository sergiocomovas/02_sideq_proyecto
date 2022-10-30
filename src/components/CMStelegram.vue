<template><div>
  <div class="q-pa-md q-mb-xl text-black text-body2"
       style="border-radius: 10px; background-color:white;" >

      <div class="text-h3" align="center" style="color:darkred" v-html="respuesta.title"></div>
      <div class="text-body2 q-pa-xl" style="color:darkred" v-html="contenidosrc"></div>

      <p align="center">
        <code>Ejemplo usando la "API" de telegram/ph <br>
        <a target="_blank" :href="url">{{ url }}</a>
        </code>
      </p>

  </div>
</div></template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

export default defineComponent({
  name: 'CMStelegram',
  props: {
    url: String,
  },
  setup(props) {
    const respuesta = ref({
      title: '',
      author: '',
      dates: {
        published: '',
        modified: '',
        formated_published: '',
      },
    });
    const contenidosrc = ref();
    const fetch = async () => {
      // https://iqcode.com/code/javascript/axios-post-with-body
      const postbody = { link: props.url };
      await axios
        .post('https://telegraph.comovas.es/', postbody)
        .then((response) => {
          respuesta.value = response.data;
          contenidosrc.value = respuesta.value.content.replaceAll('/file', 'https://telegra.ph/file').replaceAll('<img ', '<img class="q-img__image q-img__image--with-transition q-img__image--loaded" loading="" fetchpriority="auto" aria-hidden="true" draggable="false" ').replaceAll('<a ', '<a target="_blank" ');
        });
    };
    fetch();
    // respuesta.value.result.content = nodeToDom(respuesta.value.result.content);
    return {
      respuesta,
      fetch,
      contenidosrc,
      props,
    };
  },
});
</script>
