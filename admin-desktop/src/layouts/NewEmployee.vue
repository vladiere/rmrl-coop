<template>
  <div class="q-pa-md q-gutter-sm">
    <q-btn label="Add Employee" color="primary" @click="dialog = true" />

    <q-dialog
      v-model="dialog"
      persistent
      :maximized="maximizedToggle"
      transition-show="slide-up"
      transition-hide="slide-down"
    >
      <q-card class="bg-blue-grey-3 text-white">
        <q-bar>
          <q-space />

          <q-btn
            dense
            flat
            icon="minimize"
            @click="maximizedToggle = false"
            :disable="!maximizedToggle"
          >
            <q-tooltip v-if="maximizedToggle" class="bg-white text-primary"
              >Minimize</q-tooltip
            >
          </q-btn>
          <q-btn
            dense
            flat
            icon="crop_square"
            @click="maximizedToggle = true"
            :disable="maximizedToggle"
          >
            <q-tooltip v-if="!maximizedToggle" class="bg-white text-primary"
              >Maximize</q-tooltip
            >
          </q-btn>
          <q-btn dense flat icon="close" v-close-popup>
            <q-tooltip class="bg-white text-primary">Close</q-tooltip>
          </q-btn>
        </q-bar>

        <q-card-section
          class="full-width row inline wrap justify-center items-center content-center"
        >
          <div class="text-h4 text-bold">Add Employee</div>
        </q-card-section>

        <q-card-section
          class="full-width row inline wrap justify-center items-center content-center"
        >
          <form
            class="g-gutter-lg fit"
            @submit.prevent="handleSubmit"
            @reset="onReset"
          >
            <div class="q-pa-md example-row-equal-width">
              <div class="row q-py-md q-gutter-lg">
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    v-model="form.firstname"
                    label="Firstname"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a first name',
                    ]"
                  />
                </div>
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    v-model="form.lastname"
                    label="Lastname"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a last name',
                    ]"
                  />
                </div>
              </div>
              <div class="row q-gutter-lg q-mb-md">
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    class="q-pb-md"
                    v-model="form.email"
                    label="Email"
                    lazy-rules
                    :rules="[
                      (val) => emailRegex.test(val) || 'Please enter a valid email address',
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter your email address',
                    ]"
                  />
                </div>
                <div class="col">
                  <q-input
                    v-model="form.address"
                    standout="bg-teal text-white"
                    type="email"
                    autogrow
                    label="Address"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a address',
                    ]"
                  />
                </div>
              </div>
              <div class="row q-pb-md q-gutter-lg">
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    class="q-pb-md"
                    v-model="form.number"
                    label="Phone Number"
                    lazy-rules
                    :rules="[
                      (val) => phoneRegex.test(val) || 'Please enter a valid number',
                      (val) =>
                        (val !== '' && val !== null) ||
                        'Please enter your number',
                    ]"
                  />
                </div>
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    class="q-pb-md"
                    v-model="form.position"
                    label="Position"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a Position',
                    ]"
                  />
                </div>
              </div>
              <q-btn
                type="submit"
                color="secondary"
                class="q-mt-md"
                icon-right="send"
                label="Add member"
              />
            </div>
          </form>
        </q-card-section>
      </q-card>
    </q-dialog>
  </div>
</template>

<script setup>
import { api } from "src/boot/axios";
import { defineComponent, ref } from "vue";
import { useQuasar } from "quasar";

const emits = defineEmits(["new-member-added"]);

const $q = useQuasar();

defineComponent({
  name: "NewEmployee",
});

const dialog = ref(false);
const maximizedToggle = ref(true);
const phoneRegex = /^(09|\+639|639)\d{9}$/;
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

// const isValidNumber = (number) => {
//   return regex.test(number);
// };

const form = ref({
  id: 0,
  firstname: "",
  lastname: "",
  number: "",
  address: "",
  email: "",
  position: "",
});

const onReset = () => {
  form.value = "";
};
// watch(() => {
//   console.log(isValidNumber(form.value.number));
// });

const handleSubmit = async () => {
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  const objProps = Object.values(form.value)
  let flag = false

  for (const key of objProps) {
    if (key || key === 0) {
      flag = true
    }
  }

  if (flag) {
    await api.post("/registerEmployee", form.value, config).then((res) => {
      if (res.data.status == 200) {
        onReset();
        $q.notify({
          position: "top",
          type: "positive",
          message: res.data.message,
        });
        emits("new-member-added", true);
      }
    });
  } else {
    $q.notify({
      position: "top",
      type: "negative",
      message: "Please fill in the form to add a new member",
    });
  }
};
</script>
