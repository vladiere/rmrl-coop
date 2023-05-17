<template>
  <div class="q-pa-md">
    <q-table
      flat
      class="text-capitalize text-center"
      bordered
      ref="tableRef"
      title="Members Petty Cash"
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
  name: "PettyCashTable",
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
    label: "Account ID",
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
    name: "middlename",
    required: true,
    label: "middlename",
    align: "center",
    field: "middlename",
    sortable: true,
  },
  {
    name: "balance",
    align: "center",
    label: "Petty Cash Balance",
    field: "balance",
    sortable: true,
  },
  {
    name: "formatted_date",
    align: "center",
    label: "Date payed",
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
    search: query.value !== "" ? query.value : "",
    id: '0'
  };

  await api
    .get("/get-pettycash", { params })
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
