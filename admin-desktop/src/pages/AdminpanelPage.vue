<template>
  <q-page padding>
    <AddAdmin />
    <AdminTable />
  </q-page>
</template>

<script setup>
import { defineComponent, ref, onMounted } from "vue";
import AdminTable from "src/components/AdminTable.vue";
import AddAdmin from "src/layouts/AddAdmin.vue";

defineComponent({
  name: "adminPanelPage",
});

</script>
