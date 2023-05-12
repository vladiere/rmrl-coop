<template>
  <q-page padding v-if="stylesLoaded">
    <div class="q-pa-md">
      <div class="full-width">
        <div class="q-pa-md text-bold text-h5 flex-center">
          <span>Account Information</span>
        </div>
        <q-separator inset/>
        <div class="full-width column q-pa-lg text-h6 q-gutter-sm">
          <span
            >Fullname: {{ capitalize(user.value.firstname) }}
            {{ user.value.middlename.charAt(0).toUpperCase() }}.
            {{ capitalize(user.value.lastname) }}</span
          >
          <span>Number: {{ user.value.number }}</span>
          <span>Address: {{ capitalize(user.value.address) }}</span>
          <span>Interest Rate: 2% per annum</span>

          <q-btn
            label="Apply for Loan"
            style="width: 15%;"
            color="secondary"
            icon-right="description"
            @click="applyForLoan"
          />
        </div>
      </div>

      <q-separator inset/>

      <div class="q-pa-md">
        <q-table
          title="Recent Loan Transactions"
          :rows="rows"
          :columns="columns"
          row-key="name"
        />
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref, inject, provide, computed, onMounted, watchEffect } from "vue";
import { useQuasar  } from "quasar";
import { useRouter } from "vue-router";
import { api } from "src/boot/axios";
import { useUserStore } from 'src/stores/userdata'


defineComponent({
  name: "LoanPage",
});

const $q = useQuasar();
const stylesLoaded = ref(false);
const user = inject('user')
const router = useRouter()
const rows = ref({})
const userStore = useUserStore()

const userData = computed(() => userStore.data)

$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 300);

const capitalize = (str) => {
  return str.toLowerCase().replace(/\b\w/g, function (char) {
    return char.toUpperCase();
  });
};

const columns = [
  {
    name: "amount",
    align: "center",
    label: "Loan Amount",
    field: "amount",
    sortable: true,
  },
  {
    name: "debit",
    align: "center",
    label: "Debit",
    field: "debit",
    sortable: true,
  },
  {
    name: "balance_pay",
    align: "center",
    label: "Balance payed",
    field: "balance_pay",
    sortable: true,
  },
  {
    name: "formatted_date",
    required: true,
    label: "Date Pay",
    align: "center",
    field: "formatted_date",
    sortable: true,
  },
  {
    name: "status_pay",
    required: true,
    label: "Loan Status",
    align: "center",
    field: "status_pay",
    sortable: true,
  },
];

const applyForLoan = () => {
  userStore.setDesc('regular loan')

  router.push('loan-application')
}

onMounted(() => {
  fetchTransactions()
})

watchEffect(() => {
  if (stylesLoaded.value) {
    fetchTransactions()
  }
})

const fetchTransactions = async () => {
  const params = {
    id: userData.value.id,
    stats: 'accept'
  }

  await api.get('/get-loans', { params })
    .then(res => {

      rows.value = res.data
    })
    .catch(err => console.error(err))
}


</script>

<style scoped></style>
