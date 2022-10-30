<template><div>
  <h2>Botón CSS</h2>
  <div class="text-center q-pa-xl animated animated pulse delay-5s slow">
    <q-btn
      push
      fab-mini
      style="background-color:hotpink;"
      class="full-width btn-reflejos">
      DESTELLO AL PASAR EL BOTÓN
    </q-btn>
  </div>
</div></template>

<script>
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'PruebaCss',
  setup() {
    return {

    };
  },
});
</script>

<style scoped>
.btn-reflejos{
  /* background-color: hotpink; */
  background-image: linear-gradient(
    -60deg,
    transparent, transparent 40%,
    #ffffff44 40%, #ffffff40 60%,
    transparent 60%, transparent 100%
  );
  background-size: 200% 100%;
  background-repeat: no-repeat;
  background-position-x: 150%;

}

.btn-reflejos:hover{
  background-position-x: -150%;
  transition: background-position-x 600ms;
}
</style>
