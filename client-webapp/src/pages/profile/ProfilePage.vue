<template>
  <q-page padding v-if="stylesLoaded">
    <div class="row full-width justify-center">
      <span class="text-h4 q-mt-sm">Profile</span>
    </div>
    <div class="row full-width justify-center">
      <div class="col-4 q-pa-md q-gutter-md">
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.lastname"
          label="Lastname"
        />
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.firstname"
          label="Firstname"
        />
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.middlename"
          label="Middlename"
        />
        <div class="row">
          <div class="col q-mr-md">
            <q-input
              standout="bg-teal text-white"
              readonly
              class="text-capitalize"
              v-model="userdata.value.birthdate"
              label="Birth date"
            />
          </div>
          <div class="col">
            <q-input
              standout="bg-teal text-white"
              readonly
              class="text-capitalize"
              v-model="userdata.value.number"
              label="Personal Number"
            />
          </div>
        </div>
        <div class="row">
          <div class="col q-mr-md">
            <q-input
              standout="bg-teal text-white"
              readonly
              class="text-capitalize"
              v-model="userdata.value.civil_status"
              label="Civil Status"
            />
          </div>
          <div class="col">
            <q-input
              standout="bg-teal text-white"
              readonly
              class="text-capitalize"
              v-model="userdata.value.gender"
              label="Gender"
            />
          </div>
        </div>
      </div>
      <div class="col-4 q-pa-md q-gutter-md">
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.email_add"
          label="Email Address"
        />
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.address"
          label="Present Address"
        />
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.beneficiary"
          label="Beneficiary"
        />
        <q-input
          standout="bg-teal text-white"
          readonly
          class="text-capitalize"
          v-model="userdata.value.business_work"
          label="Business/Work"
        />
      </div>
    </div>

    <div
      class="column full-width q-gutter-md justify-center items-center q-mt-lg"
    >
      <span class="text-h5">Password Settings</span>
      <q-form @submit.prevent="onSubmit" class="q-gutter-md" style="width: 50%">
        <q-input
          :type="isPwd ? 'password' : 'text'"
          standout="bg-teal text-white"
          v-model="changepassForm.newpassword"
          label="New Password"
          lazy-rules
          :rules="[
            (val) =>
              (val != null && val != '') || 'Please enter a new password',
            (val) => val.length > 8 || 'Password must be at least 8 characters',
          ]"
        >
          <template v-slot:append>
            <q-icon
              :name="isPwd ? 'visibility_off' : 'visibility'"
              class="cursor-pointer"
              @click="isPwd = !isPwd"
            />
          </template>
        </q-input>
        <q-input
          :type="isPwd ? 'password' : 'text'"
          standout="bg-teal text-white"
          v-model="changepassForm.cnewpassword"
          label="Confirm New Password"
          lazy-rules
          :rules="[
            (val) =>
              (val != null && val != '') || 'Please confirm your new password',
          ]"
        >
          <template v-slot:append>
            <q-icon
              :name="isPwd ? 'visibility_off' : 'visibility'"
              class="cursor-pointer"
              @click="isPwd = !isPwd"
            />
          </template>
        </q-input>

        <q-toggle
          v-model="showPass"
          label="Show Password"
          @click="isPwd = !isPwd"
        />
        <q-btn
          color="secondary"
          icon-right="keys"
          label="Change Password "
          type="submit"
        />
      </q-form>
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref, inject, onMounted, computed } from "vue";
import { useQuasar } from "quasar";
import { api } from "src/boot/axios";

defineComponent({
  name: "ProfilePage",
});

const userdata = ref({});
const isPwd = ref(true);
const changepassForm = ref({
  newpassword: "",
  cnewpassword: "",
});
const showPass = ref(false);

onMounted(() => {
  const user = inject("user");

  userdata.value = user;

});

const $q = useQuasar();
const stylesLoaded = ref(false);

$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 300);

const onSubmit = async () => {
  const params = {
    token: "",
    newPass: changepassForm.value.cnewpassword,
    id: userdata.value.value.id,
  };

  console.log(userdata.value.value.id)

  if (changepassForm.value.newpassword === changepassForm.value.cnewpassword) {
    await api.post("/reset-password", params).then((res) => {
      if (res.data.message[0].st_code == 200) {
        $q.notify({
          position: "top",
          type: "positive",
          message: res.data.message[0].st_msg,
        });
        changepassForm.value = "";
      } else {
        $q.notify({
          position: "bottom",
          type: "negative",
          message: res.data.message[0].st_msg,
        });
      }
    });
  } else {
    $q.notify({
      position: "top",
      type: "warning",
      message: "Passwords does not match",
    });
  }
};
</script>
