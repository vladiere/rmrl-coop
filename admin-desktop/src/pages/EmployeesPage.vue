<template>
  <q-page padding>
    <NewEmployee />
    <EmployeeTable />
  </q-page>
</template>

<script setup>
import { defineComponent } from "vue";
import EmployeeTable from "src/components/EmployeeTable.vue";
import NewEmployee from "src/layouts/NewEmployee.vue";


defineComponent({
  name: "employeesPage",
});


</script>
