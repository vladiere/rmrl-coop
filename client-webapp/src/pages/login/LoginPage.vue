<style lang="scss">
@import "./Login.scss";
</style>

<template>
  <div className="login" v-if="stylesLoaded">
    <div className="card">
      <div className="top">
        <span>Welcome to RMRL Coop</span>
        <p>
          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Accusantium
          incidunt nulla minima veniam adipisci quis dolorem voluptas quod
          repellendus commodi.
        </p>
      </div>
      <div className="bottom">
        <span>Login</span>
        <form @submit.prevent="handleLogin">
          <input type="text" placeholder="Lastname" v-model="form.lastname" />
          <q-input
          :type="isPwd ? 'password' : 'text'"
            placeholder="Password"
            v-model="form.password"
          >
            <template v-slot:append>
              <q-icon
                :name="isPwd ? 'visibility_off' : 'visibility'"
                class="cursor-pointer"
                @click="isPwd = !isPwd"
              />
            </template>
          </q-input>
          <div class="links">
            <button>Login</button>
            <h6 class="h4 cursor-pointer" @click="resetpass = true">
              Reset Password
            </h6>
          </div>
        </form>
      </div>
    </div>
    <div className="right">
      <img
        src="https://images.pexels.com/photos/1422408/pexels-photo-1422408.jpeg?auto=compress&cs=tinysrgb&w=1600"
        alt=""
      />
    </div>

    <q-dialog
      v-model="resetpass"
      persistent
      transition-show="flip-down"
      transition-hide="flip-up"
    >
      <q-card class="bg-primary text-white" style="width: 500px">
        <q-bar>
          <q-icon name="battery_full" />
          <span>{{ batt }}%</span>

          <q-space />

          <div>{{ formattedDate }}</div>

          <q-space />

          <q-btn dense flat icon="close" v-close-popup @click="text.email = ''">
            <q-tooltip class="bg-white text-primary">Close</q-tooltip>
          </q-btn>
        </q-bar>

        <q-card-section>
          <div class="text-h6">{{ formattedTime }}</div>
        </q-card-section>

        <q-card-section class="q-pt-none">
          <q-input
            standout="bg-teal text-white"
            v-model="text.email"
            label="Email Address"
          />
        </q-card-section>

        <q-card-section align="right">
          <q-btn
            flat
            style="color: #cedad8"
            label="Send Request"
            @click="sendResetReq"
          />
          <q-btn
            flat
            style="color: #cedad8"
            label="Cancel"
            v-close-popup
            @click="text.email = ''"
          />
        </q-card-section>
      </q-card>
    </q-dialog>
  </div>
</template>

<script setup lang="ts">
import { useRouter } from "vue-router";
import { ref, onMounted, defineComponent } from "vue";
import { api } from "src/boot/axios";
import { useQuasar, date } from "quasar";

defineComponent({
  name: "LoginPage",
});

const form = ref({
  lastname: "",
  password: "",
  ipaddress: "",
  browser: "",
});

const text = ref({
  email: "",
});

const $q = useQuasar();
const timestamp = Date.now();

const router = useRouter();
const browserName = ref("");
const resetpass = ref(false);
const isPwd = ref(true);
const batt = ref(null);

const formattedDate = date.formatDate(timestamp, "MMMM Do, YYYY");
const formattedTime = date.formatDate(timestamp, "hh:mm A");

onMounted(() => {
  if ("getBattery" in navigator) {
    navigator.getBattery().then(function (battery) {
      batt.value = battery.level * 100;
    });
  } else {
    console.log("Battery Status API is not supported in this browser.");
  }

  getLocation();
  checkBrowser();
});

const stylesLoaded = ref(false);

$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 2000);

const handleLogin = async () => {
  localStorage.setItem("browser", browserName.value);
  form.value.lastname = form.value.lastname.toLowerCase();
  form.value.browser = browserName.value.toLowerCase();
  form.value.ipaddress =
    form.value.ipaddress !== "" ? form.value.ipaddress : "offline";

  if (form.value.lastname !== "" && form.value.password !== "") {
    try {
      await api.post("/login-member", form.value).then((res) => {
        if (res.status === 200) {
          localStorage.setItem("token", res.data.token);
          localStorage.setItem("ip-address", window.location.host);

          if (!stylesLoaded.value) {
            setTimeout(() => {
              stylesLoaded.value = true;
              $q.loading.hide();
            }, 2000);
          }
          router.push("home");
        } else {
          console.error(res.data.message);
        }
      });
    } catch (error) {
      console.log(error.message)
      $q.notify({
        position: "top",
        type: "warning",
        message: error.response.data.message,
      });
    }
  } else {
    $q.notify({
      position: "top",
      type: "warning",
      message: "Please enter your lastname and password",
    });
  }
};

const checkBrowser = () => {
  if (window.navigator.userAgent.indexOf("MSIE") !== -1) {
    browserName.value = "Internet Explorer";
  } else if (window.navigator.userAgent.indexOf("Firefox") !== -1) {
    browserName.value = "Mozilla Firefox";
  } else if (window.navigator.userAgent.indexOf("Chrome") !== -1) {
    browserName.value = "Google Chrome";
  } else if (window.navigator.userAgent.indexOf("Safari") !== -1) {
    browserName.value = "Apple Safari";
  } else if (window.navigator.userAgent.indexOf("Opera") !== -1) {
    browserName.value = "Opera";
  } else {
    browserName.value = "unknown browser";
  }
};

const getLocation = async () => {
  await api
    .get("https://ipapi.co/json")
    .then((res) => {
      form.value.ipaddress = res.data.ip;
    })
    .catch((err) => {
      console.error(err);
    });
};

const sendResetReq = async () => {
  if (text.value.email !== "") {
    $q.loading.show();
    stylesLoaded.value = true;

    await api.post("/request-reset", text.value).then((res) => {
      $q.notify({
        position: "center",
        type: "positive",
        message: res.data.message,
      });
    });
    text.value.email = "";
    $q.loading.hide();
  } else {
    $q.notify({
      position: "top",
      type: "warning",
      message: "Please enter your email",
    });
  }
};
</script>
