<template>
  <div class="q-pa-md q-mb-xl text-black text-body2"
  align="center"
  style="border-radius: 10px; background-color:darkgrey;" >

     <!--Paralax-->
        <div class="q-pa-md q-gutter-md">
          <div class="row justify-between">

          <q-img
            src="https://sbot.comovas.es//uploads/comovas_fondo_1_83d25437de.png"
          >
            <h3
            class="absolute-full text-h3 flex flex-center"
            >
            {{respuesta.data.attributes.titular}}
            </h3>
          </q-img>

          </div>
        </div>

      <Markdown :source="contenidosrc" :html=true />
  </div>
</template>

<style>
img {
  max-width: 100%;
  height: auto;
}
</style>

<script>
import { defineComponent, ref } from 'vue';
import Markdown from 'vue3-markdown-it';
import axios from 'axios';

export default defineComponent({
  name: 'CMSstrapi',
  components: {
    Markdown,
  },
  props: {
    fuente: String,
  },
  setup(props) {
    const respuesta = ref({
      data: {
        id: '',
        meta: '',
        attributes: {
          titular: '',
          entradilla: '',
          cuerpo_articulo: '',
          cuerpo_resumen: '',
          fecha_creacion: '',
          fecha_articulo: '',
          firmado_por: '',
          createdAt: '',
          updatedAt: '',
          publishedAt: '',
          // portada.data.attributes.url
          portada: {
            data: {
              atrributes: {
                url: '',
              },
            },
          },
        },
      },
    });
    const contenidosrc = ref();
    const fetch = async () => {
      await axios
        .get(`${props.fuente}?populate=*`)
        .then((response) => {
          respuesta.value = response.data;
          contenidosrc.value = respuesta.value.data.attributes.cuerpo_articulo;
        });
    };
    fetch();
    return {
      props,
      respuesta,
      contenidosrc,
    };
  },
});
</script>
