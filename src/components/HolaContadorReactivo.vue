<template>
  <div>
    <h2 style="color: darkorchid">Contador Reactivo ⚛️</h2>
    <p
      class="text-center"
      style="background-color: darkorchid; border-radius: 15px"
    >
      <br><span class="q-pa-md text-h5 text-weight-bolder">{{ counterComputed }}</span>
      <br /><br />

      <q-btn color="accent" class="q-ma-xs" @click="increment">
        Incrementar
      </q-btn>
      <q-btn color="accent" class="q-ma-xs" @click="decrement">
        Decrementar
      </q-btn>

      <q-banner
        class="q-ma-lg shadow-11"
        style="border-radius: 10px 10px 0px 0px"
        color="grey-9"
      >
        ❌❌❌ Una vez usado ...refs(), si ponermos { { data.counterComputed } }
        dará un error silencionso y no se compilará.
        <br />✅✅✅ Usar { { counterComputed } }
      </q-banner>
    </p>
    <q-banner class="p-ma-md">
      NUEVO: USANDO REACTIVE
      <hr />
      Necesitamos importar REACTIVE y TOREFS from VUE.<br />
      El primero de ellos, el REACTIVE, permite estructurar funciones y
      contantes dentro del parámetro data = reactive(llaves LOQUESEA llaves);<br />
      El segundo de ellos, el TOREFS, permite la carga dinámica de datos en el
      paso de RETURN la sintaxis es trespuntostoRefs(LOQUESEA)<br />
    </q-banner>
  </div>
</template>

<script>
import {
  defineComponent, reactive, computed, toRefs,
} from 'vue';

export default defineComponent({
  name: 'HolaContadorReactivo',
  setup() {
    const data = reactive({
      counter: 0,
      counterComputed: computed(() => `El valor de counter es ${data.counter}`),
    });

    const increment = () => {
      data.counter += 1;
    };

    const decrement = () => {
      data.counter -= 1;
    };

    // !!ACUÉRDATE DEL RETURN
    return { increment, decrement, ...toRefs(data) };
  }, // <-- fin del setup()
});
</script>
