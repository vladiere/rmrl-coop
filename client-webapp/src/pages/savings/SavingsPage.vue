<template>
  <q-page padding v-if="stylesLoaded">
    <div class="q-pa-md">
      <div class="full-width">
        <div class="q-pa-md text-bold text-h5 flex-center">
          <span>Account Information</span>
        </div>
        <q-separator inset />
        <div class="full-width column q-pa-lg text-h6">
          <span
            >Fullname: {{ capitalize(user.value.firstname) }}
            {{ user.value.middlename.charAt(0).toUpperCase() }}.
            {{ capitalize(user.value.lastname) }}</span
          >
          <span>Number: {{ user.value.number }}</span>
          <span>Address: {{ capitalize(user.value.address) }}</span>
        </div>
      </div>

      <q-separator inset />

      <div class="q-ma-lg text-bold text-h5 row q-gutter-md">
        <span>Savings</span>
      </div>

      <div class="q-pa-md">
        <q-table
          title="Savings"
          :rows="rows"
          :columns="columns"
          row-key="name"
        />
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref, inject, onMounted } from "vue";
import { useQuasar } from "quasar";
import { api } from "src/boot/axios";

defineComponent({
  name: "SavingsPage",
});

const $q = useQuasar();
const stylesLoaded = ref(false);
const user = inject("user");
const small = ref(false);
const rows = ref([]);
const form = ref({
  amount: '',
  withdrawOptions: ''
})

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

const columns = [
  {
    name: "amount",
    align: "center",
    label: "Amount",
    field: "amount",
    sortable: true,
  },
  {
    name: "withdraw",
    align: "center",
    label: "Withdraw",
    field: "withdraw",
    sortable: true,
  },
  {
    name: "deposit",
    align: "center",
    label: "Deposit",
    field: "deposit",
    sortable: true,
  },
  {
    name: "formatted_date",
    align: "center",
    label: "Date",
    field: "formatted_date",
    sortable: true,
  },
];

const getSavings = async () => {
  const params = {
    search: user.value.id
  }
  console.log(params)
  await api.get('/get-savings', { params })
    .then(res => {
      rows.value = res.data
    })
}

const handleWithdraw = () => {

}

onMounted(() => {
  getSavings()
})

</script>
