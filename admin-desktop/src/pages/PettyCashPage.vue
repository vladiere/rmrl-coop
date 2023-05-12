<template>
  <q-page padding>
    <PettyCashTable />
  </q-page>
</template>

<script setup>
import { defineComponent, ref, onMounted } from "vue";
import PettyCashTable from 'src/components/PettyCashTable.vue'

defineComponent({
  name: "pettyCashPage",
});

</script>
