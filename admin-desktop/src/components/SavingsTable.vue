<template>
  <div class="q-pa-md">
    <q-table
      flat
      class="text-capitalize"
      bordered
      ref="tableRef"
      title="Members Savings"
      :rows="rows"
      :columns="columns"
      row-key="id"
      :loading="shouldShowLoading"
      :selected-rows-label="getSelectedString"
      selection="single"
      v-model:selected="selected"
    >
      <template v-slot:top-right>
        <q-btn
          class="q-mr-md"
          color="primary"
          icon-right="archive"
          label="Export data"
          no-caps
          @click="exportTable"
        />
        <q-input v-model="query" debounce="500" filled placeholder="Search">
          <template v-slot:append>
            <q-icon name="search" />
          </template>
        </q-input>
      </template>
    </q-table>
    <q-dialog v-model="small" persistent>
      <q-card style="width: 300px">
        <q-card-section>
          <div class="text-h6">Withdraw/Deposit</div>
        </q-card-section>

        <q-card-section class="q-pt-none">
          <q-input
            color="grey-3"
            label-color="orange"
            outlined
            v-model="amount"
            label="Amount"
            min="1"
            type="number"
          >
            <template v-slot:prepend>
              <q-icon name="event" color="orange" />
            </template>
          </q-input>
        </q-card-section>

        <q-card-actions align="right" class="bg-white text-teal">
          <q-btn
            flat
            label="WITHDRAW"
            @click="handleWithdrawDeposit('withdraw')"
          />
          <q-btn
            flat
            label="DEPOSIT"
            @click="handleWithdrawDeposit('deposit')"
          />
          <q-btn flat label="CANCEL" @click="cancelDialog" />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>

<script setup>
import {
  defineComponent,
  onMounted,
  ref,
  watchEffect,
  reactive,
  computed,
} from "vue";
import { api } from "src/boot/axios";
import { useQuasar, exportFile } from "quasar";

defineComponent({
  name: "SavingsTable",
});

const $q = useQuasar();
const tableRef = ref(null);
const query = ref("");
const amount = ref(0);
const rows = ref([]);
const selected = ref([]);
const small = ref(false);
const state = reactive({
  isLoading: false,
});

const columns = [
  {
    name: "member_id",
    required: true,
    label: "Account ID",
    align: "center",
    field: "member_id",
    sortable: true,
  },
  {
    name: "fullname",
    required: true,
    label: "Who is",
    align: "center",
    field: "fullname",
    sortable: true,
  },
  {
    name: "amount",
    required: true,
    label: "Savings Balance",
    align: "center",
    field: "amount",
    sortable: true,
  },
  {
    name: "withdraw",
    required: true,
    label: "Withdraw Balance",
    align: "center",
    field: "withdraw",
    sortable: true,
  },
  {
    name: "deposit",
    required: true,
    label: "Deposit Balance",
    align: "center",
    field: "deposit",
    sortable: true,
  },
  {
    name: "formatted_date",
    align: "center",
    label: "Date saved",
    field: "formatted_date",
    sortable: true,
  },
];

function wrapCsvValue(val, formatFn, row) {
  let formatted = formatFn !== void 0 ? formatFn(val, row) : val;

  formatted =
    formatted === void 0 || formatted === null ? "" : String(formatted);

  formatted = formatted.split('"').join('""');

  return `"${formatted}"`;
}

const exportTable = () => {
  // naive encoding to csv format
  const content = [columns.map((col) => wrapCsvValue(col.label))]
    .concat(
      rows.value.map((row) =>
        columns
          .map((col) =>
            wrapCsvValue(
              typeof col.field === "function"
                ? col.field(row)
                : row[col.field === void 0 ? col.name : col.field],
              col.format,
              row
            )
          )
          .join(",")
      )
    )
    .join("\r\n");

  const status = exportFile("table-export.csv", content, "text/csv");

  if (status !== true) {
    $q.notify({
      message: "Denied file download...",
      color: "negative",
      icon: "warning",
    });
  }
};

const fetchEmployeeData = async () => {
  const params = {
    search: query.value !== "" ? query.value : "0",
  };

  await api
    .get("/get-savings", { params })
    .then((res) => {
      rows.value = res.data;
    })
    .catch((err) => {
      console.error(err);
    });
};

const shouldShowLoading = computed(() => {
  return state.isLoading;
});

onMounted(() => {
  fetchEmployeeData();

  setInterval(() => {
    setLoading();
  }, 5000);
});

const setLoading = () => {
  state.isLoading = true;

  setTimeout(() => {
    state.isLoading = false;
    fetchEmployeeData();
  }, 1000);
};

const getSelectedString = () => {
  small.value = true;
};

const cancelDialog = () => {
  selected.value = []
  small.value = false
  amount.value = 0
}

const handleWithdrawDeposit = async (str) => {
  console.log(selected.value[0])

  const params = {
    id: selected.value[0].member_id,
    amount: amount.value,
    desc: str
  }


  await api.post('/withdraw-deposit', params)
    .then(res => {
      console.log(res.data[0])
      $q.notify({
        position: 'top',
        style: 'positive',
        message: res.data[0].st_msg
      })

    })
}

watchEffect(() => {
  fetchEmployeeData();

  if (query.value !== "") {
    fetchEmployeeData();
  }
  fetchEmployeeData();
});
</script>
