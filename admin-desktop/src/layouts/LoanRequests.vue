<template>
  <div class="q-pa-md">
    <div class="full-width">
      <div class="q-pa-lg row q-gutter-md">
        <span class="text-h4">Loan Request Notifications</span>
        <q-btn class="bg-primary text-white" @click="print" label="Print form"/>
      </div>
      <q-separator inset />
      <div class="row full-width flex-center q-mt-xl q-gutter-md" ref="printTemplate" id="print-template">
        <div class="q-pa-md q-mb-xl">
          <span class="text-h4 text-capitalize">Application Form</span>
          <div class="q-ma-sm q-gutter-sm">
            <div class="full-width">
              <div class="row">
                <div class="col-7">
                  <q-input
                    disable
                    v-model="form.amount"
                    type="number"
                    label="Amount Applied"
                  />
                </div>
                <div class="col-2">
                  <q-input
                    disable
                    class="q-mx-sm"
                    v-model="form.loanterm"
                    label="Loan Term"
                  />
                </div>
              </div>
              <q-input autogrow disable v-model="form.purpose" label="Purpose" />

              <div class="row items-center">
                <span class="text-subtitle1">Mode of payment</span>
                <q-radio
                  disable
                  v-model="form.modepayment"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="cash"
                  label="Cash"
                />
                <q-radio
                  disable
                  v-model="form.modepayment"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="atm-card"
                  label="ATM Card"
                />
                <q-radio
                  disable
                  v-model="form.modepayment"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="debit-from-sa"
                  label="Debit From SA"
                />
                <q-radio
                  disable
                  v-model="form.modepayment"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="post-dated-checked"
                  label="Post Dated Checked"
                />
                <q-radio
                  disable
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
                  disable
                  v-model="form.repaymentsched"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="daily"
                  label="Daily"
                />
                <q-radio
                  disable
                  v-model="form.repaymentsched"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="weekly"
                  label="Weekly"
                />
                <q-radio
                  disable
                  v-model="form.repaymentsched"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="bi-monthly"
                  label="Bi-Monthly"
                />
                <q-radio
                  disable
                  v-model="form.repaymentsched"
                  checked-icon="task_alt"
                  unchecked-icon="panorama_fish_eye"
                  val="monthly"
                  label="Monthly"
                />
                <q-radio
                  disable
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
                  <q-input
                    v-model="form.middlename"
                    label="Middlename"
                    disable
                  />
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
                  <q-input
                    v-model="form.contactno"
                    label="Contact No."
                    disable
                  />
                </div>
                <div class="col-2">
                  <q-input
                    disable
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
                  <q-input
                    disable
                    class="q-mx-sm"
                    v-model="form.tinno"
                    type="number"
                    label="TIN"
                  />
                </div>
              </div>
              <div class="row fit items-center">
                <div class="col-4 q-mt-md">
                  <span class="text-subtitle1">Civil Status</span>
                  <q-radio
                    disable
                    v-model="form.civil_status"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="single"
                    label="Single"
                  />
                  <q-radio
                    disable
                    v-model="form.civil_status"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="married"
                    label="Married"
                  />
                  <q-radio
                    disable
                    v-model="form.civil_status"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="widow"
                    label="Widow"
                  />
                  <q-radio
                    disable
                    v-model="form.civil_status"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="Separate"
                    label="separate"
                  />
                </div>
                <div class="col">
                  <q-input
                    disable
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
                    disable
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
                    disable
                    class="q-mx-sm"
                    v-model="form.position"
                    label="Position"
                  />
                </div>
              </div>
              <q-input
                disable
                class="q-mx-sm"
                v-model="form.dataaddress"
                label="Address"
              />
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
                    disable
                    v-model="form.emstatus"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="regular"
                    label="Regular"
                  />
                  <q-radio
                    disable
                    v-model="form.emstatus"
                    checked-icon="task_alt"
                    unchecked-icon="panorama_fish_eye"
                    val="contractual"
                    label="Contractual"
                  />
                  <q-radio
                    disable
                    v-model="form.emstatus"
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
                    disable
                    type="number"
                    v-model="form.salaryincome"
                    label="Monthly Salary/Income"
                  />
                </div>
                <div class="col">
                  <q-input
                    disable
                    type="number"
                    class="q-mx-sm"
                    v-model="form.otherincome"
                    label="Other Income"
                  />
                </div>
                <div class="col">
                  <q-input
                    disable
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
                    disable
                    class="q-mx-sm"
                    v-model="coMakerdata.colname"
                    label="Lastname"
                  />
                </div>
                <div class="col">
                  <q-input
                    disable
                    class="q-mx-sm"
                    v-model="coMakerdata.cofname"
                    label="Firstname"
                  />
                </div>
                <div class="col">
                  <q-input
                    disable
                    class="q-mx-sm"
                    v-model="coMakerdata.comname"
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
                disable
                v-model="form.other_institution"
                checked-icon="task_alt"
                unchecked-icon="panorama_fish_eye"
                val="yes"
                label="Yes"
              />
              <q-radio
                disable
                v-model="form.other_institution"
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
                misrepresentation or misdeclaration that will be discovered
                during credit investigation will automatically cause the
                disapproval of this loan. 1 expressly submit to any credit
                investigation as well as to furnish any other requirements of
                the cooperative by reason hereof.
              </span>
              <span>
                I hereby acknowledge and authorize RMRL Cooperative to regularly
                submit, share, disclosure my personal and credit data defined
                under RA 9510, the Credit Information Sharing Act (CISA) and its
                implementing Rules & Regulations, and not in violation to
                RA10173 of 2012, the Data Privacy Act, to the Credit Information
                Corporation (CIC), to its authorized accessing entities and CIBI
                Information Inc. to establish my creditworthiness as part of
                Credit Investigation process.
              </span>
              <div class="items-center" v-if="loanState">
                <q-btn
                  :disable="state"
                  color="secondary"
                  icon-right="send"
                  label="Accept Request Form"
                  @click="acceptLoan(form.member_id)"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import {
  defineComponent,
  ref,
  onMounted,
  watchEffect,
  computed,
  inject,
} from "vue";
import { api } from "src/boot/axios";
import { useMemberStore } from "src/stores/memberStore";
import { useQuasar } from "quasar";
import html2canvas from 'html2canvas';
import jsPDF from 'jspdf';

defineComponent({
  name: "LoanRequest",
});

const form = ref({});
const memberData = inject("member");
const coMakerdata = ref({});
const printTemplate = ref(null)
const state = ref(false)
const loanState = ref(true)

const $q = useQuasar();

form.value = memberData.value;


const getComakerData = async () => {
  const params = {
    co_id: form.value.comaker_id,
    m_id: form.value.id
  };

  await api.get("/get-comaker", { params }).then((res) => {
    coMakerdata.value = res.data[0];
  });
};

const getLoanStatus = async () => {
  const params = {
    id: 0,
    stats: 'accept'
  };

  await api.get("/get-loans", { params }).then((res) => {

    if (res.data.length != 0) {
      if (res.data[0].id == form.value.member_id) {
        loanState.value = true
      }
    } else {
      if (res.data[0].id == form.value.member_id) {
        loanState.value = true
      }
    }

  });
};

const acceptLoan = async (id) => {
  const params = {
    amount: form.value.amount,
    loanterm: form.value.loanterm,
    desc: 'accept'
  };
  await api.put(`/accept-request/${id}`, params).then((res) => {
    state.value = true
    $q.notify({
      position: "top",
      type: "position",
      message: res.data[0].st_msg,
    });
  });
};


const print = () => {
  html2canvas(printTemplate.value).then(canvas => {
    const imgData = canvas.toDataURL('image/png');
    const pdf = new jsPDF();
    pdf.addImage(imgData, 'PNG', 10, 10, 180, 240);
    pdf.save('download.pdf');
  });
};

onMounted(() => {
  getLoanStatus()
  getComakerData();
});

watchEffect(() => {
  getLoanStatus()
  getComakerData();
});
</script>
