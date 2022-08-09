import { ref, computed } from 'vue';

export default function contador() {
// ESLINT QUIERE QUE SEA ASÍ

  const counter = ref(0);

  const counterComputed = computed(
    () => `El Valor de counter es ${counter.value}`,
  );

  const increment = () => {
    counter.value += 1;
  };

  const decrement = () => {
    counter.value -= 1;
  };

  return {
    counter, counterComputed, increment, decrement,
  };
}
