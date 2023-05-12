<script setup>
import { ref, onMounted, watch } from "vue";
import { api } from "src/boot/axios";
import { useRouter } from "vue-router";
import { useQuasar } from "quasar";

const $q = useQuasar();
const router = useRouter();

let form = ref({
  username: "",
  password: "",
  ipaddress: "",
  browser: ""
});

const dense = ref(false);
const accept = ref(false);
const isPwd = ref(true);


watch(() => {
  localStorage.setItem("accept", accept.value);
});

onMounted(() => {
  getLocation()
  getBrowser()
  accept.value = localStorage.getItem("accept");
  localStorage.removeItem("token");

  if (localStorage.getItem("accept")) {
    if (
      localStorage.getItem("username") != null &&
      localStorage.getItem("password") != null
    ) {
      form.value.username = localStorage.getItem("username");
      form.value.password = localStorage.getItem("password");
      accept.value = true;
    } else {
      localStorage.removeItem("username");
      localStorage.removeItem("password");
      accept.value = false;
    }
  } else {
    accept.value = false;
  }
});

const handleSubmit = async () => {
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  if (form.value.username !== "") {
    if (form.value.password !== "") {
      await api
        .post("/loginAdmin", form.value, config)
        .then((res) => {
          form.value.ipaddress = form.value.ipaddress !== '' ? form.value.ipaddress : 'offline'
          if (res.data.status == 200) {
            localStorage.setItem("token", res.data.token);
            if (accept.value) {
              localStorage.setItem("username", form.value.username);
              localStorage.setItem("password", form.value.password);
            } else {
              localStorage.removeItem("username");
              localStorage.removeItem("password");
            }
            router.push("home");
          }
        })
        .catch((err) => {
          $q.notify({
            position: "top",
            type: "warning",
            message: err.response.data.message,
          });
        });
    } else {
      $q.notify({
        position: "top",
        type: "warning",
        timeout: 2000,
        message: "Please enter your password.",
      });
    }
  } else {
    $q.notify({
      position: "top",
      timeout: 2000,
      type: "warning",
      message: "Please enter your username.",
    });
  }
};

const getBrowser = () => {
  if (window.navigator.userAgent.indexOf('MSIE') !== -1) {
    form.value.browser = 'internet explorer';
  } else if (window.navigator.userAgent.indexOf('Firefox') !== -1) {
    form.value.browser = 'mozilla firefox';
  } else if (window.navigator.userAgent.indexOf('Chrome') !== -1) {
    form.value.browser = 'google chrome';
  } else if (window.navigator.userAgent.indexOf('Safari') !== -1) {
    form.value.browser = 'apple safari';
  } else if (window.navigator.userAgent.indexOf('Opera') !== -1) {
    form.value.browser = 'opera';
  } else {
    form.value.browser = 'unknown browser';
  }
}

const getLocation = async () => {
  await api.get('https://ipapi.co/json')
    .then(res => {
      form.value.ipaddress = res.data.ip
    })
}

</script>

<template>
  <div class="q-pa-md absolute-center row flex-center">
    <div class="q-gutter-y-md column" style="width: 400px">
      <span class="text-dark text-bold text-h2 q-mb-md">RMRL Coop</span>
      <form class="q-gutter-lg" @submit.prevent="handleSubmit">
        <q-input
          style="width: 100%"
          standout="blue-grey-8 text-white"
          v-model="form.username"
          label="Username"
          :dense="dense"
        />
        <q-input
          style="width: 100%"
          standout="blue-grey-8 text-white"
          :type="isPwd ? 'password' : 'text'"
          v-model="form.password"
          label="Password"
          :dense="dense"
        >
          <template v-slot:append>
            <q-icon
              :name="isPwd ? 'visibility_off' : 'visibility'"
              class="cursor-pointer"
              @click="isPwd = !isPwd"
            />
          </template>
        </q-input>
        <q-toggle v-model="accept" label="Remember Me" />
        <q-btn
          class="bg-blue-grey-4 text-black"
          style="width: 40%"
          type="submit"
          label="Login"
        />
      </form>
    </div>
  </div>
</template>

<style lang="scss" scoped></style>
