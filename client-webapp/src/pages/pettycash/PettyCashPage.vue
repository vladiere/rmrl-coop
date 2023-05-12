<template>
  <q-page padding>
    <div class="q-pa-md" v-if="stylesLoaded">
      <div class="full-width">
        <div class="q-pa-md text-bold text-h5 flex-center">
          <span>Account Information</span>
        </div>
        <q-separator inset />
        <div class="full-width column q-pa-lg text-h6 q-gutter-sm">
          <span
            >Fullname: {{ capitalize(user.value.firstname) }}
            {{ user.value.middlename.charAt(0).toUpperCase() }}.
            {{ capitalize(user.value.lastname) }}</span
          >
          <span>Number: {{ user.value.number }}</span>
          <span>Address: {{ capitalize(user.value.address) }}</span>
          <span>
              Petty Cash Balance:
              <q-icon name="fas fa-peso-sign" />
              {{ formatAmount(user.value.pettycash_bal) }}</span
          >
          <q-btn
            label="Apply for Petty Cash Loan"
            style="width: 22%"
            color="secondary"
            icon-right="description"
            @click="applyForLoan"
          />
          <div class="full-width row justify-center">
            <div class="q-pa-md column q-mt-xl" style="width: 70%">
              <span
                >RMRL Coop in the Philippines offers a petty cash loan for its
                members who are in need of small amounts of cash for urgent
                needs. This loan has a low interest rate of 2% per annum, making
                it an affordable option for those who require immediate
                financial assistance. The loan can be availed online or through
                the Coop's office, and the application process is simple and
                straightforward.</span
              >
              <span class="q-mt-xl">Loan Calculation Process:</span>
              <span
                >To calculate the loan amount with the 2% interest rate per
                annum, the following formula will be used:</span
              >
              <span class="q-mt-md"
                >Loan Amount = Petty Cash Loan x (1 + Interest Rate x Loan
                Term)</span
              >
              <span class="q-mt-md"
                >For example, if a member wants to avail a petty cash loan of
                PHP 5,000 for a period of 6 months, the calculation will be as
                follows:</span
              >
              <span class="q-mt-md"
                >Loan Amount = PHP 5,000 x (1 + 0.02 x 0.5)</span
              >
              <span>Loan Amount = PHP 5,100</span>
              <span class="q-mt-md"
                >Therefore, the member will receive a loan of PHP 5,100, which
                includes the interest amount of PHP 100.</span
              >
              <span class="q-mt-md"
                >The repayment schedule will be agreed upon by both the Coop and
                the member, and regular payments will be made until the loan
                amount, along with the accrued interest, is fully paid
                off.</span
              >
              <span class="q-mt-xl">Conclusion:</span>
              <span
                >The petty cash loan offered by RMRL Coop in the Philippines is
                a great option for members who require small amounts of cash for
                urgent needs. With a low interest rate of 2% per annum, the loan
                is affordable and accessible to all. By following the loan
                calculation process, members can easily calculate the loan
                amount and repayment schedule.</span
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref, inject, onMounted } from "vue";
import { useQuasar } from "quasar";
import { useUserStore } from "src/stores/userdata";
import { useRouter } from "vue-router";

defineComponent({
  name: "PettyCashPage",
});

const $q = useQuasar();
const stylesLoaded = ref(false);
const user = inject("user");
const userStore = useUserStore();
const router = useRouter();

onMounted(() => {
  const usersdata = inject("user");

  user.value = usersdata.value;
});

$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 500);

const capitalize = (str) => {
  return str.toLowerCase().replace(/\b\w/g, function (char) {
    return char.toUpperCase();
  });
};

const applyForLoan = () => {
  userStore.setDesc("petty cash loan");
  router.push("loan-application");
};

const formatAmount = (numb) => {
  const numStr = numb.toString();
  let result = "";
  let count = 0;
  for (let i = numStr.length - 1; i >= 0; i--) {
    result = numStr[i] + result;
    count++;
    if (count % 3 === 0 && i !== 0) {
      result = "," + result;
    }
  }
  return result;
};
</script>
