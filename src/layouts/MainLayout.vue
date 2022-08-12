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

      <!-- CONTENIDO DEL DRAWER -->

        <EssentialLink/>
        <div style="width: 100%;" class="q-pa-md text-center">
          <q-btn @click="toggleLeftDrawer" class="q-ma-xl q-pa-xs full-width"
            rounded color="dark">Cerrar Presentación</q-btn>
          <div class="q-pt-xl q-pr-md text-right"><a style="color:#FFF"  href="https://web.comovas.es/about/">⚖️ LEGAL</a></div>
        </div>

    </q-scroll-area>
    </q-drawer>

    <q-page-container>

      <!-- ENLACES ROUTER -->

      <q-page-sticky
        class="q-pt-md shadow-11" style="background-color:black; z-index:8;"
        expand position="top">
        <div class="fit">
          <q-tabs dense inline-label outside-arrows
        mobile-arrows align="justify" v-model="tab">

              <q-tab @click="this.$router.push('/tareas')"
              :class="{ 'q-tab--active': ctareas }"
              name="tareas" id="tareas" icon="diamond" label="Tareas" />

              <q-tab  @click="this.$router.push('/pruebas')"
              :class="{ 'q-tab--active': cpruebas }"
              name="pruebas" id="pruebas" icon="filter_1" label="Tests 1" />

              <q-tab  @click="this.$router.push('/pruebas2')"
              :class="{ 'q-tab--active': cpruebas2 }"
              name="pruebas2" id="pruebas2" icon="filter_2" label="Tests 2" />

              <q-tab  @click="this.$router.push('/pruebas3')"
              :class="{ 'q-tab--active': cpruebas3 }"
              name="pruebas3" id="pruebas3" icon="filter_3" label="Tests 3" />

              <q-tab class="text-yellow-10" @click="this.$router.push('/about')"
              :class="{ 'q-tab--active': cabout }"
              name="about" id="about" icon="source" label="Código" />

          </q-tabs>
        </div>
      </q-page-sticky>

      <!-- VISTA DEL ROUTER -->

        <!--<transition
          appear
          enter-active-class="animated fadeIn">
        </transition>-->

        <router-view v-slot="{ Component }" class="q-ml-lg" style="overflow: hidden;">
          <transition
          appear
          enter-active-class="animated fadeIn delay-2s"
          leave-active-class="animated fadeOut delay-1s">
            <component :is="Component" />
          </transition>
        </router-view>

    </q-page-container>

  </q-layout>
</template>

<script>
import { defineComponent, ref } from 'vue';
import EssentialLink from 'components/EssentialLink.vue';
import { useQuasar } from 'quasar';
import { useRoute } from 'vue-router';

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink,
  },

  setup() {
    const $q = useQuasar();
    const leftDrawerOpen = ref(false);

    const cpruebas = ref(false);
    const cpruebas2 = ref(false);
    const cpruebas3 = ref(false);
    const ctareas = ref(false);
    const cabout = ref(false);

    const tab = ref('');

    $q.dark.set(true);

    return {
      tab,
      ctareas,
      cpruebas,
      cpruebas2,
      cpruebas3,
      cabout,
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
  mounted() {
    const route = useRoute();
    const nombrecambiar = route.path.slice(1);
    this.tab = nombrecambiar;
  },
  beforeUpdate() {
    this.ctareas = false;
    this.cpruebas = false;
    this.cpruebas2 = false;
    this.cpruebas3 = false;
    this.cabout = false;
  },
  updated() {
    const route = useRoute();
    const nombrecambiar = route.path.slice(1);
    /* if (nombrecambiar === 'tareas') { this.ctareas = true; }
    if (nombrecambiar === 'pruebas') { this.cpruebas = true; }
    if (nombrecambiar === 'pruebas2') { this.cpruebas2 = true; }
    if (nombrecambiar === 'pruebas3') { this.cpruebas3 = true; }
    if (nombrecambiar === 'about') { this.cabout = true; } */
    this.tab = nombrecambiar;
  },
});
</script>

<style scoped>
.router-link-active{
  font-weight:bolder;
  text-transform: uppercase;
}
</style>
