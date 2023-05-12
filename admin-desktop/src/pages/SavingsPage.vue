<template>
  <q-page padding>
    <SavingsTable />
  </q-page>
</template>

<script setup>
import { defineComponent, ref, onMounted } from "vue";
import SavingsTable from 'src/components/SavingsTable.vue'

defineComponent({
  name: "savingsPage",
});

</script>
