<template>
  <q-page padding>
    <div class="row items-center">
      <MemberToPay />
      <q-btn
        class="q-ml-sm"
        flat
        round
        dense
        :color="unread_count == 0 ? 'primary' : 'warning'"
        icon="mdi-bell"
        aria-label="Notifications"
        to="notifications"
      >
        <q-badge v-if="unread_count != 0" color="red" floating transparent>
          {{ unread_count }}
        </q-badge>
      </q-btn>
    </div>

    <router-view />
  </q-page>
</template>

<script setup>
import {
  defineComponent,
  onMounted,
  ref,
  watchEffect
} from "vue";
import MemberToPay from "src/layouts/MemberToPay.vue";
import { api } from "src/boot/axios";
import { useQuasar } from 'quasar'

defineComponent({
  name: "loanPage",
});

const $q = useQuasar();
const unread_count = ref(0);


const getAllRequest = async () => {
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  const params = {
    loanstats: "unread",
  };

  await api.get("/get-unreadcount", { params }, config).then((res) => {
    unread_count.value = res.data.data[0].unread_count
  });
};


onMounted(() => {
  // getUnreadCount();
  getAllRequest();
});

watchEffect(() => {
  // getUnreadCount();
  getAllRequest();
});
</script>
