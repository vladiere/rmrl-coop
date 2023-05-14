<template>
  <div class="q-pa-md q-gutter-sm">
    <q-btn label="Add Member" color="primary" @click="dialog = true" />

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
          <div class="text-h4 text-bold">New Member</div>
        </q-card-section>

        <q-card-section
          class="full-width row inline wrap justify-center items-center content-center"
        >
          <form
            class="g-gutter-lg fit"
            @submit.prevent="handleSubmit"
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
                    v-model="form.middlename"
                    label="Middlename"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a middle name',
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
                <div class="col-2 text-black">
                  <span class="text-subtitle1">Gender</span>
                  <q-radio
                    v-model="form.gender"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="male"
                    label="Male"
                  />
                  <q-radio
                    v-model="form.gender"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="female"
                    label="Female"
                  />
                </div>
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    class="q-pb-md"
                    v-model="form.beneficiary"
                    label="Beneficiary"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Type N/A if not a member of beneficiary',
                    ]"
                  />
                </div>
                <div class="col">
                  <q-input
                    v-model="form.birthdate"
                    standout="bg-teal text-white"
                    type="date"
                    label="Birth Date"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a birth date',
                    ]"
                  />
                </div>
                <div class="col">
                  <q-input
                    v-model="form.address"
                    standout="bg-teal text-white"
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
                <div class="col text-black">
                  <span class="text-subtitle1">Civil Status</span>
                  <q-radio
                    v-model="form.cstatus"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="single"
                    label="Single"
                  />
                  <q-radio
                    v-model="form.cstatus"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="married"
                    label="Married"
                  />
                  <q-radio
                    v-model="form.cstatus"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="widow"
                    label="Widow"
                  />
                  <q-radio
                    v-model="form.cstatus"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="Separate"
                    label="separate"
                  />
                </div>
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    class="q-pb-md"
                    v-model="form.number"
                    label="Phone Number"
                    lazy-rules
                    :rules="[
                      (val) => regex.test(val) || 'Please enter a valid number',
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
                    v-model="form.business_work"
                    label="Business/Work"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a business or work name',
                    ]"
                  />
                </div>
              </div>
              <div class="row q-mb-md q-gutter-lg">
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    :type="isPwd ? 'password' : 'text'"
                    class="q-pb-md"
                    v-model="form.password"
                    label="Password"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a password',
                    ]"
                  >
                    <template v-slot:append>
                      <q-icon
                        :name="isPwd ? 'visibility_off' : 'visibility'"
                        class="cursor-pointer"
                        @click="isPwd = !isPwd"
                      />
                    </template>
                  </q-input>
                </div>
                <div class="col">
                  <q-input
                    standout="bg-teal text-white"
                    class="q-pb-md"
                    v-model="form.email_add"
                    type="email"
                    label="Email Address"
                    lazy-rules
                    :rules="[
                      (val) =>
                        (val !== null && val !== '') ||
                        'Please enter a email address',
                    ]"
                  />
                </div>
              </div>
              <q-input
                standout="bg-teal text-white"
                class="q-pb-md"
                v-model="form.share_capital"
                label="Share Capital"
                type="number"
                lazy-rules
                :rules="[
                  (val) =>
                    (val !== null && val !== '') ||
                    'Please enter a share capital',
                  (val <= 1000 && val == 0) ||
                    'Enter amount starting from 1000',
                ]"
              />
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
  name: "AddMembersDialog",
});

const dialog = ref(false);
const maximizedToggle = ref(true);
const regex = /^(09|\+639|639)\d{9}$/;
const isPwd = ref(true);

// const isValidNumber = (number) => {
//   return regex.test(number);
// };

const form = ref({
  firstname: "",
  middlename: "",
  lastname: "",
  gender: "",
  number: "",
  email_add: "",
  birthdate: "",
  cstatus: "",
  address: "",
  password: "",
  beneficiary: "",
  business_work: "",
  share_capital: "",
});

const onReset = () => {
  form.value = '';
};
// watch(() => {
//   console.log(isValidNumber(form.value.number));
// });

const handleSubmit = async () => {

  const objProps = Object.values(form.value);
  let flag = false;

  for (const key of objProps) {
    if (key || key === 0) {
      flag = true;
    }
  }

  if (flag) {
    await api.post("/registerMember", form.value).then((res) => {
      if (res.data.status == 200) {
        onReset();
        $q.notify({
          position: "top",
          type: "positive",
          message: res.data.message,
        });
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
