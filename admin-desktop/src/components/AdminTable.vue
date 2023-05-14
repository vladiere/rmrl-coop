<template>
  <div class="q-pa-md">
    <q-table
      class="text-capitalize"
      flat
      bordered
      ref="tableRef"
      title="Admin Accounts Table"
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
import {
  defineComponent,
  ref,
  reactive,
  computed,
  watchEffect,
  onMounted,
} from "vue";
import { useQuasar, exportFile } from "quasar";
import { api } from "src/boot/axios";

defineComponent({
  name: "AdminTable",
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
    label: "Admin ID",
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
    name: "email",
    required: true,
    label: "Email Address",
    align: "center",
    field: "email",
    sortable: true,
  },
  {
    name: "username",
    align: "center",
    label: "username",
    field: "username",
    sortable: true,
  },
  {
    name: "formatted_date",
    required: true,
    label: "date added",
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

const getAdminList = async () => {
  const params = {
    query: query.value || "",
    token: localStorage.getItem("token"),
  };
  await api
    .get("/get-admin-list", { params })
      .then((result) => {
        rows.value = result.data;
      })
      .catch((error) => console.error(error));
};

onMounted(() => {
  getAdminList();

  setInterval(() => {
    setLoading()
  }, 5000);
});

const shouldShowLoading = computed(() => {
  return state.isLoading;
});

const setLoading = () => {
  state.isLoading = true;

  setTimeout(() => {
    state.isLoading = false;
    getAdminList();
  }, 1000);
};

watchEffect(() => {

  setTimeout(() => {
    getAdminList();
  }, 1000);

  if (query.value === "") {
    getAdminList();
  }
  getAdminList();
});

</script>
