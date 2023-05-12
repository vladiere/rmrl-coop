<template>
  <q-page padding>
    <div class="row items-center">
      <MemberToPay />
      <q-dropdown content-class="shadow-2" auto-close>
        <q-btn
          class="q-ml-sm"
          flat
          round
          dense
          :color="unread_count == 0 ? 'primary' : 'warning'"
          icon="mdi-bell"
          aria-label="Notifications"
          @click="dropdownActive = !dropdownActive"
        >
          <q-badge v-if="unread_count != 0" color="red" floating transparent>
            {{ unread_count }}
          </q-badge>
        </q-btn>
        <q-scroll-area
          class="absolute bg-blue-grey-2 q-py-sm q-px-md"
          v-if="dropdownActive"
          style="height: 150px; width: 200px; z-index: 9999"
        >
          <div
            class="column cursor-pointer"
            v-for="notif in notifications"
            :key="notif.id"
            @click="seeRequest(notif)"
          >
            <span :class="notif.status == 'unread' ? 'text-capitalize text-subtitle2' : 'text-capitalize text-subtitle2 text-grey-6'">{{
              notif.firstname
            }}</span>
            <span caption :class="notif.status == 'unread' ? 'text-capitalize q-mb-md' : 'text-capitalize q-mb-md text-grey-6'" style="font-size: 12px"
              >{{ notif.description }}</span>
            <q-separator inset primary class="full-width" />
          </div>
          <div class="text-center" v-if="notifications.length === 0">
            <span class="text-blue-grey-8">No new notifications</span>
          </div>
        </q-scroll-area>
      </q-dropdown>
    </div>

    <router-view />
  </q-page>
</template>

<script setup>
import {
  defineComponent,
  onMounted,
  ref,
  watchEffect,
  defineExpose,
  provide,
} from "vue";
import MemberToPay from "src/layouts/MemberToPay.vue";
import { api } from "src/boot/axios";
import { useMemberStore } from "src/stores/memberStore";
import { useRouter } from "vue-router";
import { useQuasar } from 'quasar'

defineComponent({
  name: "loanPage",
});

const $q = useQuasar();
const unread_count = ref(0);
const dropdownActive = ref(false);
const notifications = ref({});
const memberData = ref({});
const useStore = useMemberStore();
const router = useRouter();


const getAllRequest = async () => {
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  const params = {
    loanstats: "",
  };

  await api.get("/get-unreadcount", { params }, config).then((res) => {

    console.log(res.data.count)

    notifications.value = res.data.count;
    let tmp = 0
    Object.entries(notifications.value).map(notifs => notifs[1].status === 'unread' ? tmp++ : tmp)

    unread_count.value = tmp
  });
};

const seeRequest = (user) => {
  useStore.setData(user);
  dropdownActive.value = false;
  memberData.value = user;

  acceptLoan(memberData.value.member_id, memberData.value.amount, memberData.value.loanterm)

  router.push("loan-request");

};


const acceptLoan = async (id, amount, loanterm) => {
  const params = {
    amount: amount,
    loanterm: loanterm,
    desc: 'read'
  };
  await api.put(`/accept-request/${id}`, params).then((res) => {
    console.log(res.status)
  });
};

defineExpose({
  memberData,
});

provide("member", memberData);

onMounted(() => {
  // getUnreadCount();
  getAllRequest();
});

watchEffect(() => {
  // getUnreadCount();
  getAllRequest();
});
</script>
