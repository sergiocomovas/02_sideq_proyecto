<template>
  <div class="q-pa-md q-mb-xl text-black text-body2"
  align="center"
  style="border-radius: 10px; background-color:darkgrey;" >
    {{ props.datosgsx }}
  </div>
</template>

<script>
import { defineComponent, ref } from 'vue';
import axios from 'axios';

export default defineComponent({
  name: 'CMSgsx',
  props: {
    datosgsx: String,
  },
  setup(props) {
    const respuesta = ref({});
    const fetch = async () => {
      await axios
        .get('https://zsjhoktk.directus.app/items/blog/1')
        .then((response) => {
          respuesta.value = response.data;
        });
    };
    fetch();
    return {
      props,
      respuesta,
    };
  },
});
</script>
