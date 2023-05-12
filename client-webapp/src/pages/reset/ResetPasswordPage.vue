<template>
  <div class="q-pa-md">
    <div class="full-width full-height" v-if="stylesLoaded">
      <div class="row flex-center q-mt-xl">
        <div class="col-3">
          <div class="q-gutter-md column">
            <router-link to="/">
              <img src="../../assets/logo.png" style="object-fit: contain" />
            </router-link>
            <span class="text-h2 text-bold">RMRL Coop</span>
            <span class="text-h5">Reset your password</span>
            <q-input
              filled
              v-model="password.newPass"
              label="New Password"
              :type="isPwd ? 'password' : 'text'"
              lazy-rules
              :rules="[
                (val) => (val && val.length > 0) || 'Enter your password',
                (val) =>
                  val.length >= 8 || 'Your password must be at least 8 characters',
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
              filled
              v-model="password.cnewPass"
              label="Confirm new Password"
              :type="isCPwd ? 'password' : 'text'"
              lazy-rule
              :rules="[
                (val) =>
                  val === password.newPass || 'Confirm Password does not match',
              ]"
            >
              <template v-slot:append>
                <q-icon
                  :name="isCPwd ? 'visibility_off' : 'visibility'"
                  class="cursor-pointer"
                  @click="isCPwd = !isCPwd"
                />
              </template>
            </q-input>
            <q-btn label="Reset" color="secondary" style="width: 250px" @click="handleResetPass" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { defineComponent, ref, onMounted, watchEffect } from "vue";
import { useRouter } from "vue-router";
import { useQuasar } from "quasar";
import { api } from "src/boot/axios";

defineComponent({
  name: "ResetPassword",
});

const $q = useQuasar();
const route = useRouter();

const stylesLoaded = ref(false);
const isPwd = ref(true);
const isCPwd = ref(true);
const password = ref({
  newPass: "",
  cnewPass: "",
  token: "",
});


$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 2000);

const handleResetPass = async () => {
  if (password.value.newPass !== '' && password.value.cnewPass !== '') {
    await api.post('/reset-password', password.value)
      .then(res => {
        if (res.data.message[0].st_code == 200) {
          $q.notify({
            position: 'top',
            type: 'positive',
            message: res.data.message[0].st_msg
          })
          password.value = ''
        } else {

          $q.notify({
            position: 'bottom',
            type: 'negative',
            message: res.data.message[0].st_msg
          })
        }
      })
  } else {
    $q.notify({
      position: 'bottom',
      type: 'negative',
      message: 'Please enter your password'
    })
  }
}

const delay = ms => new Promise(resolve => setTimeout(resolve, ms))

onMounted(() => {
  password.value.token = route.currentRoute.value.query.auth;

});

watchEffect(async (onInvalidate) => {

  await delay(2000)

  if (Object.keys(password.value.token).length === 0) {
    route.push("/");
  }
})
</script>
