<template><div class="q-pr-sm">
     <h1 class="q-pt-xl text-weight-bolder">Pruebas</h1>

     <h3 class="text-center" style="color:orangered">1. EJEMPLOS MAYORES</h3>
     <HolaSimpleFetch/>
     <hr>
     <HolaTodoList></HolaTodoList>
     <hr><br>

     <h3 class="text-center" style="color:orangered">2. LO NUEVO EN VUE 3</h3>
     <HolaMundo/>
     <hr>
     <HolaProfileWithProps name="HolaSergio" :age="38"/>
     <hr>
     <HolaEmitEvents @onFire="eventEmittedFromHijo"/>
     <hr><br>

     <h3 class="text-center" style="color:orangered">3. CONTADORES</h3>
     <HolaContadorSimple/>
     <hr>
     <HolaContadorReactivo/>
     <hr>
     <HolaWatchCounter/>
     <hr>
     <HolaContadorSimpleApi/>
     <hr><br>

</div></template>

<script>
import { defineComponent } from 'vue';
import HolaMundo from 'components/HolaMundo.vue';
import HolaContadorSimple from 'components/HolaContadorSimple.vue';
import HolaContadorReactivo from 'components/HolaContadorReactivo.vue';
import HolaWatchCounter from 'components/HolaWatchCounter.vue';
import HolaContadorSimpleApi from 'components/HolaContadorSimpleApi.vue';
import HolaTodoList from 'components/HolaTodoList.vue';
import HolaSimpleFetch from 'components/HolaSimpleFetch.vue';
import HolaProfileWithProps from 'components/HolaProfileWithProps.vue';
import HolaEmitEvents from 'components/HolaEmitEvents.vue';

export default defineComponent({
  name: 'PaginaDePruebasPage',
  components: {
    HolaMundo,
    HolaContadorSimple,
    HolaContadorReactivo,
    HolaWatchCounter,
    HolaContadorSimpleApi,
    HolaTodoList,
    HolaSimpleFetch,
    HolaProfileWithProps,
    HolaEmitEvents,
  },
  setup() {
    const eventEmittedFromHijo = (message) => {
      alert(message);
    };

    // RETURN !!!
    return { eventEmittedFromHijo };
  },

});
</script>

<style scoped>
h3{
  font-family: Georgia, 'Times New Roman', Times, serif;
}
</style>
