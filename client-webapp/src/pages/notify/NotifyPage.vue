<template>
  <q-page padding v-if="stylesLoaded">
    <div class="q-pa-md" >
      <!-- content -->
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref } from 'vue'
import { useQuasar } from 'quasar';

defineComponent({
  name: 'SettingsPage'
})

const $q = useQuasar()
const stylesLoaded = ref(false);


$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 500);


</script>
