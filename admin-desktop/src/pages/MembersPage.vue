<template>
  <q-page padding>
    <div class="row">
      <div class="col-2">
        <AddNewMembers />
      </div>
    </div>
    <MembersTable />
  </q-page>
</template>

<script setup>
import { defineComponent, ref } from "vue";
import AddNewMembers from "src/layouts/AddNewMembersLayout.vue";
import MembersTable from "src/components/MembersTable.vue";

defineComponent({
  name: "membersPage",
});

const badge = ref(20)
</script>
