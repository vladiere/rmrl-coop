<template>
  <div class="q-pa-md">
    <q-table
      class="text-capitalize"
      flat
      bordered
      ref="tableRef"
      title="Loans Transactions Table"
      :rows="rows"
      :columns="columns"
      row-key="id"
      :loading="shouldShowLoading"
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
  </div>
  <AllLoans />
</template>

<script setup>
import AllLoans from './Loans.vue'
import { defineComponent, onMounted, ref, watchEffect, reactive, computed } from "vue";
import { api } from "src/boot/axios";
import { useQuasar, exportFile } from "quasar";

defineComponent({
  name: "LoansTable",
});

const $q = useQuasar();
const tableRef = ref(null);
const query = ref("");
const rows = ref([]);
const state = reactive({
  isLoading: false,
});


const columns = [
  {
    name: "id",
    required: true,
    label: "Member ID",
    align: "center",
    field: "id",
    sortable: true,
  },
  {
    name: "lastname",
    required: true,
    label: "Lastname",
    align: "center",
    field: "lastname",
    sortable: true,
  },
  {
    name: "firstname",
    required: true,
    label: "Firstname",
    align: "center",
    field: "firstname",
    sortable: true,
  },
  {
    name: "loanterm",
    required: true,
    label: "Loan term",
    align: "center",
    field: "loanterm",
    sortable: true,
  },
  {
    name: "debit",
    align: "center",
    label: "debit",
    field: "debit",
    sortable: true,
  },
  {
    name: "balance_pay",
    align: "center",
    label: "Partial pay",
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
    id: query.value !== "" ? query.value : "0",
    stats: 'accept'
  };

  await api
    .get("/get-loans", { params })
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
    setLoading()
  }, 5000);
});

const setLoading = () => {
  state.isLoading = true;

  setTimeout(() => {
    state.isLoading = false;
    fetchEmployeeData();
  }, 1000);
};

watchEffect(() => {

  if (query.value !== "") {
    fetchEmployeeData();
  }
  fetchEmployeeData();
});
</script>
