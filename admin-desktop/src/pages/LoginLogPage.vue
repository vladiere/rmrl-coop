<template>
  <q-page padding>
    <LoginLogsTable />
  </q-page>
</template>

<script setup>
import { defineComponent } from "vue";
import LoginLogsTable from "src/components/LoginLogsTable.vue";


defineComponent({
  name: "LoginLogPage",
});


</script>
