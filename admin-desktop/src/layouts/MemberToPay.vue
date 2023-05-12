<template>
  <div class="q-pa-md q-gutter-md">
    <q-btn label="To Pay" color="secondary" @click="medium = true" />
    <q-dialog v-model="medium" persistent>
      <q-card style="width: 700px; max-width: 80vw">
        <q-card-section>
          <div class="text-h6">Pay Balance</div>
        </q-card-section>

        <q-card-section class="q-pt-none text-capitalize">
          <div class="row q-gutter-md q-mb-md">
            <div class="col">
              <q-input
                standout="bg-teal text-white"
                v-model="form.lastname"
                label="Lastname"
              />
            </div>
            <div class="col">
              <q-input
                standout="bg-teal text-white"
                v-model="form.firstname"
                label="Firstname"
              />
            </div>
          </div>
          <div class="row q-gutter-md q-mb-md">
            <div class="col">
              <q-input
                standout="bg-teal text-white"
                type="number"
                v-model="form.pay_amount"
                label="Amount to pay"
                lazy-rules
                :rules="[(val) => val > 100 || 'Make it higher']"
              />
            </div>
            <div class="col">
              <q-select standout="bg-teal text-white" v-model="form.desc" :options="options" label="Loan option" />
            </div>
          </div>
        </q-card-section>

        <q-card-actions align="right" class="bg-blue-grey-2 text-teal">
          <q-btn flat label="OK" v-close-popup @click="handleUpdate" />
          <q-btn flat label="Cancel" v-close-popup />
        </q-card-actions>
      </q-card>
    </q-dialog>
  </div>
</template>

<script setup>
import { ref, defineComponent } from "vue";
import { api } from "src/boot/axios";
import { useQuasar } from "quasar";

defineComponent({
  name: "MemberToPay",
});

const $q = useQuasar();
const medium = ref(false);
const options = [
  'petty cash loan', 'regular loan'
]

const form = ref({
  firstname: "",
  lastname: "",
  pay_amount: "",
  desc: ""
});

const handleUpdate = async () => {
  await api
    .post("/update-loans", form.value)
    .then((res) => {
      $q.notify({
        color: "Primary",
        message: res.data.msg,
      });
      form.value.firstname = ''
      form.value.lastname = ''
      form.value.pay_amount = 0
    })
    .catch((err) => {
      console.log(err);
    });
};
</script>
