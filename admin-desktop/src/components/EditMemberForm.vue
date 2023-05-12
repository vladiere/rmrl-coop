<template>
  <q-dialog
    :cardDialog="cardDialog"
    no-route-dismiss
    dark
    persistent
    transition-show="scale"
    transition-hide="scale"
  >
    <q-card>
      <q-card-section>
        <q-item-label header> Edit Member </q-item-label>
      </q-card-section>

      <q-card-section class="q-pt-none">
        <q-input
          filled
          v-model="editedMember.fullname"
          label="Fullname"
          type="text"
          :rules="[(val) => !!val || 'Fullname is required']"
        />
        <q-input
          filled
          v-model="editedMember.number"
          label="Contact Number"
          type="text"
          :rules="[(val) => !!val || 'Contact number is required']"
        />
        <q-input
          filled
          v-model="editedMember.address"
          label="Address"
          type="text"
          :rules="[(val) => !!val || 'Address is required']"
        />
        <q-input
          filled
          v-model="editedMember.member_at"
          label="Member Since"
          type="datetime"
          :rules="[(val) => !!val || 'Member Since is required']"
        />
        <q-input
          filled
          v-model="editedMember.beneficiary"
          label="Beneficiary"
          type="text"
          :rules="[(val) => !!val || 'Beneficiary is required']"
        />
        <q-input
          filled
          v-model="editedMember.business_work"
          label="Business/Work At"
          type="text"
          :rules="[(val) => !!val || 'Business/Work At is required']"
        />
        <q-input
          filled
          v-model="editedMember.business_work"
          label="Business/Work At"
          type="text"
          :rules="[(val) => !!val || 'Business/Work At is required']"
        />
      </q-card-section>

      <q-card-actions align="right">
        <q-btn color="negative" label="Cancel" @click="closeDialog" />
        <q-btn
          color="primary"
          label="Save"
          @click="saveChanges"
          :disable="isSaveDisabled"
        />
      </q-card-actions>
    </q-card>
  </q-dialog>
</template>

<script>
const props = {
  member: {
    id: {
      type: Number,
    },
    firstname: {
      type: String,
    },
    middlename: {
      type: String,
    },
    lastname: {
      type: String,
    },
  },
  cardDialog: Boolean,
};
</script>

<script setup>
import { defineComponent, defineProps } from "vue";

defineComponent({
  name: "EditMemberForm",
});

defineProps(props);
</script>
