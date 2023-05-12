<template>
  <q-card
    dark
    bordered
    class="bg-grey-9 my-card q-ma-md q-pa-none"
    style="width: 300px"
  >
    <q-card-section>
      <div class="text-h6">
        {{ capitalize(firstname) }} {{ middlename.charAt(0).toUpperCase() }}.
        {{ capitalize(lastname) }}
      </div>
      <div class="text-subtitle2">{{ formatDate(member_at) }}</div>
    </q-card-section>

    <q-separator dark inset />

    <q-card-section> Contact Number: {{ number }} </q-card-section>
    <q-card-section> Address: {{ capitalize(address) }} </q-card-section>
    <q-card-section>
      Beneficiary: {{ capitalize(beneficiary) }}
    </q-card-section>
    <q-card-section>
      Business or Work at: {{ capitalize(business_work) }}
    </q-card-section>
    <q-separator dark inset />
    <q-card-section class="q-gutter-md">
      <q-btn icon="delete" color="negative" @click="confirm = true" />
      <q-btn icon="edit_square" color="positive" @click="showDialog" />
    </q-card-section>
  </q-card>

  <!-- Edit member -->
  <div class="q-pa-md absolute">
    <q-dialog
      v-model="showCardDialog"
      no-route-dismiss
      dark
      transition-show="scale"
      transition-hide="scale"
    >
      <q-card style="width: 700px; max-width: 80vw">
        <q-card-section class="row items-center q-pb-none">
          <div class="text-h6">Edit Member</div>
          <q-space />
          <q-btn icon="close" flat round dense v-close-popup />
        </q-card-section>

        <q-card-section class="q-pt-sm">
          <div class="row q-mb-md q-gutter-sm">
            <div class="col">
              <q-input
                filled
                v-model="editedMember.firstname"
                label="Fullname"
                type="text"
                disable
              />
            </div>
            <div class="col">
              <q-input
                filled
                v-model="editedMember.middlename"
                label="Fullname"
                type="text"
                disable
              />
            </div>
            <div class="col">
              <q-input
                filled
                v-model="editedMember.lastname"
                label="Fullname"
                type="text"
                disable
              />
            </div>
          </div>
          <q-input
            filled
            v-model="updateData.number"
            label="Contact Number(Optional)"
            type="text"
            :rules="[
              (val) => regex.test(val) || 'Please enter a valid number',
              (val) => !!val || 'Contact number is required',
            ]"
          />
          <q-input
            filled
            v-model="updateData.address"
            label="Address(Optional)"
            type="text"
            :rules="[(val) => !!val || 'Address is required']"
          />
          <q-input
            filled
            v-model="updateData.beneficiary"
            label="Beneficiary(Optional)"
            type="text"
            :rules="[(val) => !!val || 'Beneficiary is required']"
          />
          <q-input
            filled
            v-model="updateData.business_work"
            label="Business/Work At(Optional)"
            type="text"
            :rules="[(val) => !!val || 'Business/Work At is required']"
          />
          <q-input
            filled
            v-model="updateData.civil_status"
            label="Civil Status(Optional)"
            type="text"
            :rules="[(val) => !!val || 'Civil Status is required']"
          />
          <q-input
            filled
            v-model="updateData.email_add"
            label="Email Address(Optional)"
            type="text"
            :rules="[(val) => !!val || 'Email Address is required']"
          />
          <q-input
            filled
            v-model="updateData.password"
            label="Update Password(Optional)"
            :type="isPwd ? 'password' : 'text'"
            :rules="[(val) => !!val || 'Password is required']"
          >
            <template v-slot:append>
              <q-icon
                :name="isPwd ? 'visibility_off' : 'visibility'"
                class="cursor-pointer"
                @click="isPwd = !isPwd"
              />
            </template>
          </q-input>
        </q-card-section>

        <q-card-actions align="right">
          <q-btn color="negative" label="Cancel" v-close-popup />
          <q-btn
            color="primary"
            label="Save"
            @click="saveChanges"
            :disable="isSaveDisabled"
          />
        </q-card-actions>
      </q-card>
    </q-dialog>
    <q-dialog v-model="confirm" persistent>
      <q-card>
        <q-card-section class="row items-center">
          <q-avatar icon="delete" color="negative" text-color="white" />
          <span class="q-ml-sm">Are you sure you want to remove.</span>
        </q-card-section>

        <q-card-actions align="right">
          <q-btn flat label="Cancel" color="primary" v-close-popup />
          <q-btn flat label="Ok" color="primary" v-close-popup @click="isDelete" />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>

<script setup>
import { api } from "src/boot/axios";
import { useQuasar } from "quasar";
import { defineProps, defineComponent, ref } from "vue";

defineComponent({
  name: "MemberCard",
});

const emits = defineEmits(["cardDeleted", "showDialog", "updateMember"]);
const showCardDialog = ref(false);
const isPwd = ref(true);
const editedMember = ref([]);
const isSaveDisabled = ref(false);
const confirm = ref(false);
const okDelete = ref(false);
const regex = /^(09|\+639|639)\d{9}$/;

const props = defineProps({
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
  number: {
    type: String,
  },
  address: {
    type: String,
  },
  password: {
    type: String,
  },
  member_at: {
    type: String,
  },
  beneficiary: {
    type: String,
  },
  business_work: {
    type: String,
  },
  status: {
    type: String,
  },
});

const updateData = ref({
  id: props.id,
  firstname: props.firstname,
  middlename: props.middlename,
  lastname: props.lastname,
  number: "",
  address: "",
  password: "",
  beneficiary: "",
  civil_status: "",
  email_add: "",
  business_work: "",
});

const $q = useQuasar();

const showDialog = () => {
  isSaveDisabled.value = false;
  editedMember.value = props;
  showCardDialog.value = true;
};

const isDelete = () => {
  okDelete.value = true
  handleDelete()
}

const handleDelete = async () => {
  const params = {
    id: props.id,
  };

  await api
    .post("/deleteMember", params)
    .then((res) => {
      if (res.data[0].ret == 1) {
        $q.notify({
          position: "top",
          type: "positive",
          message: "Member deleted successfully",
        });
        emits("cardDeleted", true);
      }
    })
    .catch((err) => {
      console.log(err.message);
    });
};

const saveChanges = async () => {
  isSaveDisabled.value = true;
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  await api
    .post("/update-member", updateData.value, config)
    .then((res) => {
      if (res.data.status == 200) {
        updateData.value.address = ""
        updateData.value.beneficiary = ""
        updateData.value.business_work = ""
        updateData.value.password = ""
        updateData.value.number = ""
        $q.notify({
          position: "top",
          type: "positive",
          message: res.data.message,
        });
        emits("updateMember", true);
      }
    })
    .catch((err, xhr) => {
      if (err.response.data.status == 400) {
        $q.notify({
          position: "top",
          type: "negative",
          message: err.response.data.message,
        });
      }
    });
};

const formatDate = (timestamp) => {
  const date = new Date(timestamp);
  return date.toLocaleDateString("en-US", { timeZone: "UTC" });
};

const capitalize = (str) => {
  return str.toLowerCase().replace(/\b\w/g, function (char) {
    return char.toUpperCase();
  });
};
</script>
