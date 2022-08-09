<template>
  <div>
    <h2>Contador Sencillo</h2>
    <!--<p class="text-center">{{ counter }}<br>-->
    <p class="text-center">
      <br><span class="text-h5 text-weight-bolder">{{ counterComputed }}</span>
      <br /><br />

      <q-btn color="primary" class="q-ma-xs" @click="increment">
        Incrementar
      </q-btn>
      <q-btn color="primary" class="q-ma-xs" @click="decrement">
        Decrementar
      </q-btn>
    </p>

    <q-banner class="q-ma-sm">
      Apuntes:
      <hr />
      SETUP(){} RECUERDA QUE TIENE QUE HABER UN RETURN PARA ESTÉ DISPONIBLE EN
      LA TEMPLATE Y IMPORTAR REF FROM VUE<br />
      <q-chip color="primary">NUEVO</q-chip> Puedes añadir Computed al lado de
      Ref importándolo para crear valores personalizados.
    </q-banner>
  </div>
</template>

<script>
import { defineComponent, ref, computed } from 'vue';

export default defineComponent({
  name: 'HolaContadorSimple',
  setup() {
    const counter = ref(0);

    // en la documentación pone computed(getter:() => {return `` loquesea})
    const counterComputed = computed(
      () => `El Valor de counter es ${counter.value}`,
    );

    const increment = () => {
      counter.value += 1;
      // En el ejemplo usa ++ pero ESLINT no deja
    };

    const decrement = () => {
      counter.value -= 1;
    };

    return {
      counter,
      counterComputed,
      increment,
      decrement,
    };
  },
});
</script>
