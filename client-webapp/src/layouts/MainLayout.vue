<template>
  <q-layout view="lHh lpR lFf">
    <q-header elevated class="bg-blue-grey-2 text-primary flex-center">
      <q-toolbar>
        <q-toolbar-title>
          <span> RMRL Coop </span>
        </q-toolbar-title>
        <div class="q-pa-md">
          <q-btn-dropdown color="blue-grey-2" icon="menu">
            <q-list>
              <q-item clickable v-close-popup @click="onItemClick('home')">
                <q-item-section avatar>
                  <q-icon name="home" />
                </q-item-section>
                <q-item-section>
                  <q-item-label class="text-h6">Home</q-item-label>
                </q-item-section>
              </q-item>

              <q-item clickable v-close-popup @click="onItemClick('profile')">
                <q-item-section avatar>
                  <q-icon name="person" />
                </q-item-section>
                <q-item-section>
                  <q-item-label class="text-h6">Profile</q-item-label>
                </q-item-section>
              </q-item>

              <q-item clickable @click="handleLogout">
                <q-item-section avatar>
                  <q-icon name="logout" />
                </q-item-section>
                <q-item-section>
                  <q-item-label class="text-h6">Logout</q-item-label>
                </q-item-section>
              </q-item>
            </q-list>
          </q-btn-dropdown>
        </div>
      </q-toolbar>
    </q-header>

    <q-page-container v-if="stylesLoaded">
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script setup>
import { defineComponent, onMounted, watchEffect, reactive, ref, provide } from "vue";
import { useRouter } from "vue-router";
import { api } from "src/boot/axios";
import { useUserStore } from "src/stores/userdata";
import { useQuasar } from "quasar";

defineComponent({
  name: "MainLayout",
});

const $q = useQuasar()
const router = useRouter();
const user = reactive({});
const userStore = useUserStore();
const stylesLoaded = ref(false)

provide("user", user);

onMounted(() => {
  getMemberData();
});

defineExpose({
  user,
});


$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 300);

watchEffect(() => {
  if (stylesLoaded.value) {
    getMemberData()
  }
})

const getMemberData = async () => {
  const params = {
    token: localStorage.getItem("token"),
    limit: 10,
    sort: "desc",
  };

  await api
    .get("/get-member", { params })
    .then((res) => {
      
      user.value = res.data[0];
      userStore.setData(res.data[0]);

    })
    .catch((err) => {
      console.error(err);
    });
};

const onItemClick = (linkpath) => {
  router.push(linkpath);
};

const handleLogout = () => {
  localStorage.clear("token");
  router.push("/");
};
</script>
