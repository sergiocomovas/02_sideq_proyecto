<template>
  <div>
    <h2>API CONTADOR</h2>
    <p class="text-center">
      <br><span class='text-h5 text-weight-bolder'>{{ counterComputed }}</span> <br /><br />

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
      - Crear una carpeta COMPOSABLES en SRC (SRC->COMPOSABLES)<br />
      - Crear un archivo .JS donde irá la lógica que se llama useCounter<br />
      - En UseCounter.js, la función default es un copypaste de
      HolaContadorSimple.<br />
      - En este arhivo importamos useCounter<br />
      - En este arhivo, en setup, lo igualamos a una contante.<br />
    </q-banner>
  </div>
</template>

<script>
import { defineComponent } from 'vue';
import useCounter from '../composables/useCounter.js';

export default defineComponent({
  name: 'HolaContadorSimpleApi',
  setup() {
    const {
      counter, counterComputed, increment, decrement,
    } = useCounter();
    return {
      counter,
      counterComputed,
      increment,
      decrement,
    };
  },
});
</script>
