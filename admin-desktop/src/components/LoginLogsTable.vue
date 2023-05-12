<template>
  <div class="q-pa-md">
    <q-table
      flat
      class="text-capitalize"
      bordered
      ref="tableRef"
      title="Login Logs"
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
  name: "LoginLogsTable",
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
    name: "acc_id",
    required: true,
    label: "Account ID",
    align: "left",
    field: "acc_id",
    sortable: true,
  },
  {
    name: "whois",
    required: true,
    label: "Who is",
    align: "left",
    field: "whois",
    sortable: true,
  },
  {
    name: "browser",
    required: true,
    label: "Browser Used",
    align: "left",
    field: "browser",
    sortable: true,
  },
  {
    name: "ip_address",
    required: true,
    label: "IP Address v4/v6",
    align: "left",
    field: "ip_address",
    sortable: true,
  },
  {
    name: "loggedin_at",
    align: "left",
    label: "Logged in Date",
    field: "formatted_date",
    sortable: true,
  },
  {
    name: "login_status",
    required: true,
    label: "Login Status",
    align: "left",
    field: "login_status",
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
    limit: 10,
    sort: "desc",
  };

  await api
    .get("/logs", { params })
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
