<template>
  <q-layout view="hHh Lpr fFf">

    <q-header reveal class="bg-primary text-white">
      <q-toolbar class="bg-primary glossy text-white">
        <q-btn dense flat round icon="add_circle" @click="toggleLeftDrawer" />
        <q-space></q-space>
        <q-toolbar-title>
          <q-avatar>
          </q-avatar>
          SERGIO@COMOVAS.ES
        </q-toolbar-title>
        <q-space></q-space>
      </q-toolbar>
    </q-header>

    <q-drawer style="background-color: darkred"
    show-if-above v-model="leftDrawerOpen" side="left" behavior="desktop" elevated>
    <q-scroll-area class="fit">
      <!-- drawer content -->
        <EssentialLink/>
    </q-scroll-area>
    </q-drawer>

    <!--ENLACES ROUTER-->
    <q-page-container>
      <q-page>
      <q-page-sticky class="q-pa-md shadow-11" style="background-color:black; z-index:8;"
        expand position="top"><h5 class="q-ma-none">
        Enlaces: 🌶️ <router-link to='tareas'>Tareas</router-link>
        | 🥚 <router-link to="pruebas">Pruebas</router-link>
        | 🐣 <router-link to="pruebas2">Pruebas 2</router-link>
        | 📁 <router-link to='about'>Código</router-link>
      </h5></q-page-sticky>
      <router-view class="q-pa-xl"/>
      </q-page>
    </q-page-container>

  </q-layout>
</template>

<script>
import { defineComponent, ref } from 'vue';
import EssentialLink from 'components/EssentialLink.vue';
import { useQuasar } from 'quasar';

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink,
  },

  setup() {
    const $q = useQuasar();
    const leftDrawerOpen = ref(false);
    $q.dark.set(true);

    return {
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>

<style scoped>
.router-link-active{
  font-weight:bolder;
  text-transform: uppercase;
}
</style>
