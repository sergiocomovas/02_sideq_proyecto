<template>
  <div>
    <h2>OBSERVADORES</h2>
    <q-card
      class="text-white text-center"
      style="background: radial-gradient(circle, #35a2ff 0%, #014a88 100%)"
    >
      <q-card-section>
        ¿Es Counter 5?<br />Counter: {{ counter }}{{ counter2 }}
      </q-card-section>

      <q-card-section class="text-center q-pt-none">
        <p style="height: 30px">
          <span class="text-h5 text-weight-bolder">{{ message }}</span>
        </p>
        <q-btn color="primary" class="q-ma-xs" @click="increment">
          Incrementar
        </q-btn>
        <q-btn color="primary" class="q-ma-xs" @click="decrement">
          Decrementar
        </q-btn>
      </q-card-section>
    </q-card>
  </div>
</template>

<script>
// PARA OBSERVADORES NECESITAMOS WATCH y REF
import { defineComponent, ref, watch } from 'vue';

export default defineComponent({
  name: 'HolaWatchCounter',
  setup() {
    const counter = ref(6);
    const counter2 = ref('');
    const message = ref('');

    // NUEVO: OBSERVADOR
    watch([counter, counter2], () => {
      if (counter.value === 5) {
        message.value = '🛡️COUNTER ES 5';
        counter2.value = '✅';
      } else {
        message.value = '';
        counter2.value = '';
      }
    });

    // funciones copiadas de ContadorSimple.vue
    const increment = () => {
      counter.value += 1;
      // En el ejemplo usa ++ pero ESLINT no deja
    };

    const decrement = () => {
      counter.value -= 1;
    };

    // return al template
    return {
      counter,
      counter2,
      message,
      decrement,
      increment,
    };
  },
});
</script>
