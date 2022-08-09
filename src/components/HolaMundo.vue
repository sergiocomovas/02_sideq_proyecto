<template>
<div>
     <h2>HOLA MUNDO: <code
     style="font-family: 'Courier New', Courier, monospace;">{{ message }}</code></h2>
     <div class="text-center q-pa-xl">
      <label for="message">Mensaje</label><br>
      <q-input id="message"
      style="font-family: 'Courier New', Courier, monospace;" v-model="message" />
      </div>
     <q-banner class="q-ma-sm">
      APUNTES:<hr>
      Ejemplo del nuevo v-modal de VUE3. <br>
      Importar REF desde 'vue'<br>
      Ya no hay data(). Ahora se llama Setup()<br>
      Desde ahi declarar la constante (la misma que el v-model) y pasarla por referencia.<br>
     </q-banner>
</div>
</template>

<script>
// import { defineComponent } from 'vue/composition-api';
// REF!! para datos reactivos
import { defineComponent, ref } from 'vue';

export default defineComponent({
  name: 'HolaMundo',
  // antes era data()
  setup() {
    // antes era ref(value:'loquesea')
    const message = ref('hola');

    // RECUERDA QUE EL SETUP SIEMPRE RETORNA CONST PARA QUE ESTÉN EN LA DISPOSICIÓN DE LA TEMPLATE
    return { message };
  },
});
</script>
