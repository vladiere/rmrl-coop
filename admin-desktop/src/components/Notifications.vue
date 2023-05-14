<template>
  <div class="q-pa-md">
    <div class="row full-width justify-center items-center q-mt-xl q-gutter-lg">
      <div
        class="column justify-center text-capitalize cursor-pointer"
        style="width: 50%"
        v-for="notifs in notifications"
        :key="notifs.id"
        @click="seeRequest(notifs)"
      >
        <span
          :class="
            notifs.status == 'unread'
              ? 'text-capitalize text-h4'
              : 'text-capitalize text-h4 text-grey-6'
          "
          >{{ notifs.lastname }}, {{ notifs.firstname }}
          {{ notifs.middlename }}</span
        >
        <span
          caption
          :class="
            notifs.status == 'unread'
              ? 'q-mb-sm text-capitalize q-mb-md'
              : 'q-mb-sm text-capitalize q-mb-md text-grey-6'
          "
        >
          {{ notifs.status }}
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem
          explicabo nostrum fugit dolorem aliquid aspernatur sunt eligendi ad
          nam consectetur.
        </span>
        <q-separator />
      </div>
    </div>
  </div>
</template>

<script setup>
import {
  defineComponent,
  ref,
  onMounted,
  provide,
  inject,
  computed,
} from "vue";
import { api } from "src/boot/axios";
import { useMemberStore } from "src/stores/memberStore";
import { useRouter } from "vue-router";

defineComponent({
  name: "NotificationView",
});

const memberData = ref({});
const useStore = useMemberStore();
const router = useRouter();
const notifications = ref({});

const getUnreadcount = async () => {
  const params = {
    loanstats: "",
  };

  await api.get("/get-unreadcount", { params }).then((res) => {
    notifications.value = res.data.count;
  });
};

const seeRequest = (user) => {
  useStore.setData(user);
  memberData.value = user;

  acceptLoan(
    memberData.value.id,
    memberData.value.amount,
    memberData.value.loanterm
  );

  router.push("loan-request");
};

const acceptLoan = async (id, amount, loanterm) => {
  const params = {
    amount: amount,
    loanterm: loanterm,
    desc: "read",
  };
  await api.put(`/accept-request/${id}`, params);
};

defineExpose({
  memberData,
});

provide("member", memberData);

const testing = inject("member");

onMounted(() => {
  getUnreadcount();
});
</script>
