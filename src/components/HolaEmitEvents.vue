<template><div>
  <h2>Emit Events: datos entre componentes padre ⬅️➡️ Hijo</h2>
  <p class="text-center">
    <q-input label="Mensaje:" id="message" v-model="message"/>
    <br><q-btn-group spread>
        <q-btn v-if="message" color="deep-orange" icon-right="send" @click="notify"
        label="Notificar al Componente Padre"/>
        <q-btn v-else disabled color="deep-orange" icon-right="send" @click="notify"
        label="Notificar al Componente Padre"/>
      </q-btn-group>
  </p>
</div></template>

<script>
import { defineComponent, ref } from 'vue';

export default defineComponent({
  name: 'HolaEmitEvents',
  // DEFINIR EL EVENTO
  emit: ['onFire'],
  setup(props, { emit }) {
    const message = ref();

    const notify = () => {
      emit('onFire', message.value);
    };

    return { message, notify };
  },
});
</script>
