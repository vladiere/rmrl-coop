<template>
  <q-card
    dark
    bordered
    class="bg-grey-9 my-card q-ma-md q-pa-none"
    style="width: 300px"
  >
    <q-card-section>
      <div class="text-h6">
        {{ capitalize(lastname) }},
        {{ capitalize(firstname) }}
      </div>
      <div class="text-subtitle2">{{ formatDate(created_at) }}</div>
    </q-card-section>

    <q-separator dark inset />

    <q-card-section> Contact Number: {{ number }} </q-card-section>
    <q-card-section> Address: {{ capitalize(address) }} </q-card-section>
    <q-card-section> Email: {{ capitalize(email) }} </q-card-section>
    <q-card-section>
      Branch Position: {{ capitalize(position) }}
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
              (val) => phoneRegex.test(val) || 'Please enter a valid number',
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
            v-model="updateData.email"
            label="Emaill Address(Optional)"
            type="text"
            :rules="[
              (val) => emailRegex.test(val) || 'Please enter a valid number',
              (val) => !!val || 'Email is required',
            ]"
          />
          <q-input
            filled
            v-model="updateData.position"
            label="Branch Position(Optional)"
            type="text"
            :rules="[(val) => !!val || 'Position is required leave it if you want to']"
          />
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
import { defineComponent, ref, watchEffect } from "vue";

defineComponent({
  name: "EmployeeCard",
});

const emits = defineEmits(["cardDeleted", "showDialog", "updateMember"]);
const showCardDialog = ref(false);
const editedMember = ref([]);
const isSaveDisabled = ref(false);
const confirm = ref(false);
const okDelete = ref(false);
const phoneRegex = /^(09|\+639|639)\d{9}$/;
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

const props = defineProps({
  id: {
    type: Number,
  },
  firstname: {
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
  email: {
    type: String,
  },
  position: {
    type: String,
  },
  status: {
    type: String,
  },
  created_at: {
    type: String,
  },
  updated_at: {
    type: String,
  },
});

const updateData = ref({
  id: props.id,
  firstname: props.firstname,
  lastname: props.lastname,
  number: "",
  address: "",
  email: "",
  position: "",
});

const $q = useQuasar();

const isDelete = () => {
  okDelete.value = true
  handleDelete()
}

const showDialog = () => {
  isSaveDisabled.value = false;
  editedMember.value = props;
  showCardDialog.value = true;
};

const handleDelete = async () => {
  if (okDelete.value) {
    const params = {
      id: props.id,
    };

    await api
      .post("/delete-employee", params)
      .then((res) => {
        if (res.data[0].ret == 1) {
          $q.notify({
            position: "top",
            type: "positive",
            message: "Removed successfully",
          });
          emits("cardDeleted", true);
        }
      })
      .catch((err) => {
        console.log(err.message);
      });
  }
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
    .post("/update-employee", updateData.value, config)
    .then((res) => {
      if (res.data.status == 200) {
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

watchEffect(() => {
  console.log(okDelete.value)
})

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
