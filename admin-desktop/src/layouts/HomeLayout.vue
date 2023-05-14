<template>
  <q-layout view="lHh Lpr lFf" v-if="stylesLoaded">
    <q-header elevated class="bg-blue-grey-6">
      <q-toolbar>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        />

        <q-toolbar-title> RMRL Coop </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-drawer v-model="leftDrawerOpen" show-if-above bordered elevated>
      <q-list>
        <q-item-label
          header
          class="bg-blue-grey-10 text-white row justify-between items-center"
        >
          RMRL Coop
        </q-item-label>
        <q-space />
        <EssentialLink
          v-for="link in essentialLinks"
          :key="link.title"
          v-bind="link"
        />
        <q-item>
          <q-item-section avatar>
            <q-icon name="logout" />
          </q-item-section>
          <q-item-section>
            <q-item-label class="text-h5 cursor-pointer" @click="handleLogout"
              >Logout</q-item-label
            >
          </q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref, onMounted, watchEffect } from "vue";
import EssentialLink from "components/EssentialLink.vue";
import { useRouter } from "vue-router";
import { useQuasar } from "quasar";

const role = "admin";

const linksList = [
  {
    label: "Members",
    icon: "groups",
    link: "/home",
    auth: true,
  },
  {
    label: "Employees",
    icon: "badge",
    link: "/employees",
    auth: role === "admin" ? true : false,
  },
  {
    label: "Petty Cash",
    icon: "wallet",
    link: "/piti_cash",
    auth: true,
  },
  {
    label: "Savings",
    icon: "savings",
    link: "/savings",
    auth: true,
  },
  {
    label: "Loan",
    icon: "credit_score",
    link: "/loan",
    auth: true,
  },
  {
    label: "Admin",
    icon: "security",
    link: "/admin",
    auth: role === "admin" ? true : false,
  },
  {
    label: "Login Log",
    icon: "lock_clock",
    link: "/loginlog",
    auth: true,
  },
];

export default defineComponent({
  name: "MainLayout",

  components: {
    EssentialLink,
  },

  setup() {
    const leftDrawerOpen = ref(false);
    const stylesLoaded = ref(false);
    const router = useRouter();
    const $q = useQuasar();

    function handleLogout() {
      localStorage.clear();
      router.push("/");
    }

    const loader = () => {
      $q.loading.show();

      setTimeout(() => {
        stylesLoaded.value = true;
        $q.loading.hide();
      }, 500);
    };

    onMounted(() => {
      loader()
    })

    return {
      stylesLoaded,
      loader,
      handleLogout,
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>
