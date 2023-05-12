<template>
  <q-page padding v-if="stylesLoaded">
    <div class="q-pa-md q-mb-xl">
      <span class="text-h4 text-capitalize">Application Form</span>
      <q-form @submit.prevent="handleSubmit" class="q-ma-sm q-gutter-sm">
        <div class="full-width">
          <div class="row">
            <div class="col-7">
              <q-input
                v-model="form.amount"
                type="number"
                label="Amount Applied"
              />
            </div>
            <div class="col-2">
              <q-input
                type="number"
                class="q-mx-sm"
                v-model="form.loanterm"
                label="Loan Term"
              />
            </div>
            <div class="col-3 q-mt-md">
              <span class="text-subtitle1">Month/Year</span>
              <q-radio
                v-model="day.month_year"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="month"
                label="Month"
              />
              <q-radio
                v-model="day.month_year"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="year"
                label="Year"
              />
            </div>
          </div>
          <q-input autogrow v-model="form.purpose" label="Purpose" />

          <div class="row items-center">
            <span class="text-subtitle1">Mode of payment</span>
            <q-radio
              v-model="form.modepayment"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="cash"
              label="Cash"
            />
            <q-radio
              v-model="form.modepayment"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="atm-card"
              label="ATM Card"
            />
            <q-radio
              v-model="form.modepayment"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="debit-from-sa"
              label="Debit From SA"
            />
            <q-radio
              v-model="form.modepayment"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="post-dated-checked"
              label="Post Dated Checked"
            />
            <q-radio
              v-model="form.modepayment"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="salary-deduction"
              label="Salary Deduction"
            />
          </div>

          <q-separator inset class="full-width" />

          <div class="row items-center">
            <span class="text-subtitle1">Repayment Schedule</span>
            <q-radio
              v-model="form.repaymentsched"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="daily"
              label="Daily"
            />
            <q-radio
              v-model="form.repaymentsched"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="weekly"
              label="Weekly"
            />
            <q-radio
              v-model="form.repaymentsched"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="bi-monthly"
              label="Bi-Monthly"
            />
            <q-radio
              v-model="form.repaymentsched"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="monthly"
              label="Monthly"
            />
            <q-radio
              v-model="form.repaymentsched"
              checked-icon="task_alt"
              unchecked-icon="panorama_fish_eye"
              val="quarterly"
              label="Quarterly"
            />
          </div>
        </div>

        <q-separator inset class="full-width" />

        <div class="q-mt-xl q-gutter-md">
          <span class="text-h6">Personal Information of the Borrower</span>

          <q-separator inset class="full-width" />

          <div class="row fit">
            <div class="col">
              <q-input v-model="form.lastname" label="Lastname" disable />
            </div>
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.firstname"
                label="Firstname"
                disable
              />
            </div>
            <div class="col">
              <q-input v-model="form.middlename" label="Middlename" disable />
            </div>
          </div>
          <div class="row fit">
            <div class="col-7">
              <q-input
                v-model="form.presentaddress"
                label="Present Address"
                disable
              />
            </div>
            <div class="col-3">
              <q-input v-model="form.contactno" label="Contact No." disable />
            </div>
            <div class="col-2">
              <q-input
                type="number"
                class="q-mx-sm"
                v-model="form.yearstayed"
                label="Year Stayed"
              />
            </div>
          </div>
          <div class="row fit">
            <div class="col-8">
              <q-input
                v-model="form.birthdate"
                label="Birth Date"
                type="date"
                disable
              />
            </div>
            <div class="col-4">
              <q-input class="q-mx-sm" v-model="form.tinno" type="number" label="TIN" />
            </div>
          </div>
          <div class="row fit items-center">
            <div class="col-4 q-mt-md">
              <span class="text-subtitle1">Civil Status</span>
              <q-radio
                disable
                v-model="form.civilstatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="single"
                label="Single"
              />
              <q-radio
                disable
                v-model="form.civilstatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="married"
                label="Married"
              />
              <q-radio
                disable
                v-model="form.civilstatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="widow"
                label="Widow"
              />
              <q-radio
                disable
                v-model="form.civilstatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="Separate"
                label="separate"
              />
            </div>
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.fbacc"
                label="FB Account"
              />
            </div>
          </div>
          <div class="row fit items-center">
            <div class="col-4 q-mt-md">
              <span class="text-subtitle1">Sex</span>
              <q-radio
                disable
                v-model="form.gender"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="male"
                label="Male"
              />
              <q-radio
                disable
                v-model="form.gender"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="female"
                label="Female"
              />
            </div>
            <div class="col">
              <q-input
                disable
                class="q-mx-sm"
                v-model="form.emailadd"
                type="email"
                label="Email Address"
              />
            </div>
          </div>
          <div class="row fit">
            <div class="col">
              <q-input v-model="form.spousename" label="Name of Spouse" />
            </div>
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.nodependents"
                label="No. of Dependents"
              />
            </div>
          </div>
        </div>
        <div class="q-mt-xl q-gutter-md">
          <span class="text-h6">Employment/Business Data</span>

          <q-separator inset class="full-width" />
          <div class="row fit">
            <div class="col">
              <q-input
                disable
                v-model="form.employerbusiness"
                label="Name of Employer/Business"
              />
            </div>
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.position"
                label="Position"
              />
            </div>
          </div>
          <q-input class="q-mx-sm" v-model="form.dataaddress" label="Address" />
          <div class="row">
            <div class="col-7">
              <q-input
                v-model="form.datacontactno"
                label="Contact No."
                disable
              />
            </div>
            <div class="col-5 q-mt-md">
              <span class="text-subtitle1">Employment Status</span>
              <q-radio
                v-model="form.estatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="regular"
                label="Regular"
              />
              <q-radio
                v-model="form.estatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="contractual"
                label="Contractual"
              />
              <q-radio
                v-model="form.estatus"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="probationary"
                label="Probationary"
              />
            </div>
          </div>
          <div class="row fit">
            <div class="col">
              <q-input
                type="number"
                v-model="form.salaryincome"
                label="Monthly Salary/Income"
              />
            </div>
            <div class="col">
              <q-input
                type="number"
                class="q-mx-sm"
                v-model="form.otherincome"
                label="Other Income"
              />
            </div>
            <div class="col">
              <q-input
                type="number"
                class="q-mx-sm"
                v-model="form.noofyears"
                label="No. of years in the Company/Business"
              />
            </div>
          </div>
        </div>

        <div class="q-mt-xl q-gutter-md">
          <span class="text-h6">Co-maker's Personal Information</span>
          <div class="row">
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.colastname"
                label="Lastname"
              />
            </div>
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.cofirstname"
                label="Firstname"
              />
            </div>
            <div class="col">
              <q-input
                class="q-mx-sm"
                v-model="form.comiddlename"
                label="Middlename"
              />
            </div>
          </div>
        </div>

        <div class="q-mt-xl items-center">
          <span class="text-h6">
            Do you have any other loans from other institution?
          </span>
          <q-radio
            v-model="form.other"
            checked-icon="task_alt"
            unchecked-icon="panorama_fish_eye"
            val="yes"
            label="Yes"
          />
          <q-radio
            v-model="form.other"
            checked-icon="task_alt"
            unchecked-icon="panorama_fish_eye"
            val="no"
            label="No"
          />
        </div>

        <div class="row justify-center q-gutter-lg q-mt-xl text-h5">
          <div class="flex-center text-h3">
            <span>CONFORME</span>
          </div>

          <span>
            I warrant the truth and veracity of all the data, information
            furnished herein to the best of my knowledge. Any falsification,
            misrepresentation or misdeclaration that will be discovered during
            credit investigation will automatically cause the disapproval of
            this loan. 1 expressly submit to any credit investigation as well as
            to furnish any other requirements of the cooperative by reason
            hereof.
          </span>
          <span>
            I hereby acknowledge and authorize RMRL Cooperative to regularly
            submit, share, disclosure my personal and credit data defined under
            RA 9510, the Credit Information Sharing Act (CISA) and its
            implementing Rules & Regulations, and not in violation to RA10173 of
            2012, the Data Privacy Act, to the Credit Information Corporation
            (CIC), to its authorized accessing entities and CIBI Information
            Inc. to establish my creditworthiness as part of Credit
            Investigation process.
          </span>
          <div class="items-center">
            <q-btn
              :disable="state"
              color="secondary"
              type="submit"
              icon-right="send"
              label="Submit Request Form"
            />
          </div>
        </div>
      </q-form>
    </div>
  </q-page>
</template>

<script setup>
import {
  defineComponent,
  ref,
  computed,
  onMounted,
  watchEffect
} from "vue";
import { useQuasar } from "quasar";
import { api } from "src/boot/axios";
import { useUserStore } from 'src/stores/userdata'


defineComponent({
  name: "ApplyLoan",
});

const state = ref(false);
const $q = useQuasar();
const stylesLoaded = ref(false);
const descr = ref('');
const userData = ref({})
const userStore = useUserStore()

const usersData = computed(() => userStore.data)
const userDesc = computed(() => userStore.desc)

$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 300);

const day = ref({
  month_year: ''
});

onMounted(() => {
  userData.value = usersData.value
  descr.value = userDesc.value

})

watchEffect(() => {
  userData.value = usersData.value
  descr.value = userDesc.value

})

const form = ref({
  id: userData.value.id,
  amount: "",
  loanterm: "",
  purpose: "",
  modepayment: "",
  repaymentsched: "",
  lastname: userData.value.lastname,
  firstname: userData.value.firstname,
  middlename: userData.value.middlename,
  presentaddress: userData.value.address,
  yearstayed: "",
  contactno: userData.value.number,
  birthdate: userData.value.birthdate,
  tinno: "",
  civilstatus: userData.value.civil_status,
  fbacc: "",
  gender: userData.value.gender,
  emailadd: userData.value.email_add,
  spousename: "",
  nodependents: "",
  employerbusiness: userData.value.business_work,
  position: "",
  dataaddress: "",
  estatus: "",
  datacontactno: userData.value.number,
  salaryincome: "",
  otherincome: "",
  noofyears: "",
  colastname: "",
  cofirstname: "",
  comiddlename: "",
  other: "",
  descrip: descr.value,
});

const handleSubmit = async () => {
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  const objProps = Object.values(form.value);

  const inputFlag = Object.entries(objProps).map(([key, value]) => {
    if (value !== '') {
      return true;
    }
    return false
  })
  let count = 0;

  for (const key in inputFlag) {
    if (inputFlag[key] !== true) {
      count++
    }
  }

  console.log(count)

  if (count == 0) {
    if (form.value.loanterm > 2) {
      day.value.month_year = day.value.month_year + 's'
      form.value.loanterm = form.value.loanterm + ' ' + day.value.month_year
    }

    await api
      .post("/loan-request", form.value, config)
      .then((res) => {
        if (res.data.status == 200) {
          state.value = true;
          $q.notify({
            position: "top",
            type: "positive",
            message: res.data.msg,
          });
        }
        if (res.data.status == 404) {
          $q.notify({
            position: "top",
            type: "negative",
            message: res.data.msg,
          });
        }
        if (res.data.status == 401) {
          $q.notify({
            position: "top",
            type: "negative",
            message: res.data.msg,
          });
        }
      })
      .catch((err) => {
        console.log(err.response);
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
