<template>
  <q-page padding>
    <div class="index" v-if="stylesLoaded">
      <RouterView />
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, onMounted, ref } from 'vue';
import { RouterView } from 'vue-router';
import { useQuasar  } from "quasar";
import { api } from 'src/boot/axios';

defineComponent({
  name: 'HomeView'
})

const $q = useQuasar();
const stylesLoaded = ref(false);

$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 1500);

import './Home.scss'
</script>
