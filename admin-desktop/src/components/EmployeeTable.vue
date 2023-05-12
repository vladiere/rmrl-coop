<template>
  <div class="q-pa-md">
    <q-table
      flat
      bordered
      ref="tableRef"
      title="Employees List"
      :rows="rows"
      :columns="columns"
      row-key="id"
      :selected-rows-label="getSelectedString"
      selection="multiple"
      :selected="selected"
      @selection="onSelection"
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
  <div class="full-width row wrap items-center content-center">
    <EmployeeCard
      v-for="lors in selected"
      :key="lors.id"
      v-bind="lors"
      @cardDeleted="removeMember(lors.id)"
      @showDialog="showCardDialog(lors)"
      @updateMember="updatedMemberCard"
    />
  </div>
</template>

<script setup>
import { defineComponent, onMounted, ref, watchEffect, reactive, computed  } from "vue";
import { api } from "src/boot/axios";
import { useQuasar, exportFile } from "quasar";
import EmployeeCard from "./EmployeeCard.vue";

const props = defineProps({
  memberAdded: Boolean,
});

defineComponent({
  name: "EmployeesTable",
  props,
});

defineEmits(["cardDeleted", "updateMember"]);

const $q = useQuasar();
const tableRef = ref(null);
const query = ref("");
const selected = ref([]);
const lastIndex = ref(null);
const update = ref(false)
const rows = ref([]);
const cardId = ref("");
const state = reactive({
  isLoading: false,
});


const columns = [
  {
    name: "id",
    required: true,
    label: "Employee ID",
    align: "left",
    field: "id",
    sortable: true,
  },
  {
    name: "firstname",
    align: "left",
    label: "Firstname",
    field: "firstname",
    sortable: true,
  },
  {
    name: "lastname",
    align: "left",
    label: "Lastname",
    field: "lastname",
    sortable: true,
  },
  {
    name: "number",
    required: true,
    label: "Number",
    align: "left",
    field: "number",
    sortable: true,
  },
  {
    name: "address",
    align: "left",
    label: "Address",
    field: "address",
    sortable: true,
  },
  {
    name: "email",
    align: "left",
    label: "Email Address",
    field: "email",
    sortable: true,
  },
  {
    name: "position",
    align: "left",
    label: "Position",
    field: "position",
    sortable: true,
  },
];

const getSelectedString = () => {
  return selected.value.length === 0
    ? ""
    : `${selected.value.length} record${
        selected.value.length > 1 ? "s" : ""
      } selected of ${rows.value.length}`;
};

const onSelection = ({ rows, added, evt }) => {
  if (rows.length === 0 || tableRef.value === void 0) {
    return;
  }

  const row = rows[0];
  const filteredSortedRows = tableRef.value.filteredSortedRows;
  const rowIndex = filteredSortedRows.indexOf(row);
  const localLastIndex = lastIndex.value;

  lastIndex.value = rowIndex;
  document.getSelection().removeAllRanges();

  if ($q.platform.is.mobile === true) {
    evt = { ctrlKey: true };
  } else if (
    evt !== Object(evt) ||
    (evt.shiftKey !== true && evt.ctrlKey !== true)
  ) {
    selected.value = added === true ? rows : [];
    return;
  }

  const operateSelection =
    added === true
      ? (selRow) => {
          const selectedIndex = selected.value.indexOf(selRow);
          if (selectedIndex === -1) {
            selected.value = selected.value.concat(selRow);
          }
        }
      : (selRow) => {
          const selectedIndex = selected.value.indexOf(selRow);
          if (selectedIndex > -1) {
            selected.value = selected.value
              .slice(0, selectedIndex)
              .concat(selected.value.slice(selectedIndex + 1));
          }
        };

  if (localLastIndex === null || evt.shiftKey !== true) {
    operateSelection(row);
    return;
  }

  const from = localLastIndex < rowIndex ? localLastIndex : rowIndex;
  const to = localLastIndex < rowIndex ? rowIndex : localLastIndex;
  for (let i = from; i <= to; i += 1) {
    operateSelection(filteredSortedRows[i]);
  }
};

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

const fetchMemberData = async () => {
  const params = {
    id: query.value !== "" ? query.value : "0",
    limit: 10,
    sort: "desc",
  };

  await api
    .get("/getEmployees", { params })
    .then((res) => {
      let tmp = [];

      for (const key in res.data.data) {
        if (res.data.data[key].status !== "deleted") {
          tmp.push(res.data.data[key]);
        }
      }

      rows.value = tmp;
    })
    .catch((err) => {
      console.error(err);
    });
};

const removeMember = (id) => {
  cardId.value = id;
};

const updateCard = () => {
  selected.value = selected.value.filter(
    (member) => member.id !== cardId.value
  );
};

const updatedMemberCard = () => {
  update.value = true
}

onMounted(() => {
  fetchMemberData();

  setInterval(() => {
    setLoading()
  }, 5000);

});

const setLoading = () => {
  state.isLoading = true;

  setTimeout(() => {
    state.isLoading = false;
    fetchMemberData();
  }, 1000);
};

const shouldShowLoading = computed(() => {
  return state.isLoading;
});

watchEffect(() => {
  updateCard();
  fetchMemberData();

  if (props.memberAdded || update.value) {
    fetchMemberData();
    updateCard();
  }
  if (query.value !== "") {
    fetchMemberData();
  }

});
</script>
