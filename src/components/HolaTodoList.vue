<template><div>
<h2>Todo List 📇</h2>

<q-input filled
label="Escribe aquí... (para guardar pulsa Intro)"
v-model="todo" type="text" @keypress.enter="addTodo"/>

<div class="q-pa-md"
style="max-width: 100%; background-color:black;
max-height: 300px; height: 300px;
overflow-x:hidden; overflow-y:scroll;">
    <q-list style="max-width: 300px;" v-for="(t, index) in todos" :key="index" bordered separator>
      <q-item v-ripple>
        <q-item-section>{{ t }}</q-item-section>
        <q-item-section top side>
          <div class="text-grey-8 q-gutter-xs">
            <q-btn @click="deleteTodo(index)"
            class="gt-xs" size="12px" flat dense round icon="delete" />
          </div>
        </q-item-section>
      </q-item>
    </q-list>
</div>

<q-banner class="q-ma-md">
  Apuntes<hr>
  Esto una un recliclaje (carpeta scr>composables>useTodos.js)<br>
</q-banner>
</div></template>

<script>
import { defineComponent } from 'vue';
import useTodos from '../composables/useTodos.js';

export default defineComponent({
  name: 'HolaTodoList',
  setup() {
    const {
      todo, todos, addTodo, deleteTodo,
    } = useTodos();
    return {
      todo, todos, addTodo, deleteTodo,
    };
  },
});
</script>
