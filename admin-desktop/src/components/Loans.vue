<template>
  <div class="q-pa-md">
    <q-table
      class="text-capitalize text-center"
      flat
      bordered
      ref="tableRef"
      title="Members Loan Table"
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
</template>

<script setup>
import { defineComponent, onMounted, ref, watchEffect, reactive, computed } from "vue";
import { api } from "src/boot/axios";
import { useQuasar, exportFile } from "quasar";

defineComponent({
  name: "AllLoans",
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
    name: "member_id",
    required: true,
    label: "Member ID",
    align: "center",
    field: "member_id",
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
    name: "middlename",
    required: true,
    label: "middlename",
    align: "center",
    field: "middlename",
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
    name: "loan_amount",
    align: "center",
    label: "debit",
    field: "loan_amount",
    sortable: true,
  },
  {
    name: "purpose",
    align: "center",
    label: "Loan Purpose",
    field: "purpose",
    sortable: true,
  },
  {
    name: "modepayment",
    align: "center",
    label: "modepayment",
    field: "modepayment",
    sortable: true,
  },
  {
    name: "repaymentsched",
    align: "center",
    label: "repayment schedul",
    field: "repaymentsched",
    sortable: true,
  },
  {
    name: "partial_pay",
    align: "center",
    label: "Partial pay",
    field: "partial_pay",
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
    name: "description",
    required: true,
    label: "Date Pay",
    align: "center",
    field: "description",
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
    id: 0
  };

  await api
    .get("/get-allloans", { params })
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
