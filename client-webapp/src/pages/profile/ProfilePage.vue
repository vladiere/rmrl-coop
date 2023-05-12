<template>
  <q-page padding v-if="stylesLoaded">
    <div class="row full-width justify-center">
      <span class="text-h4 q-mt-sm">Profile</span>
    </div>
    <div class="row full-width justify-center">
      <div class="col-4 q-pa-md q-gutter-md">
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.lastname" label="Lastname" />
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.firstname" label="Firstname" />
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.middlename" label="Middlename" />
        <div class="row">
          <div class="col q-mr-md">
            <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.birthdate" label="Birth date" />
          </div>
          <div class="col">
            <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.number" label="Personal Number" />
          </div>
        </div>
        <div class="row">
          <div class="col q-mr-md">
            <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.civil_status" label="Civil Status" />
          </div>
          <div class="col">
            <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.gender" label="Gender" />
          </div>
        </div>
      </div>
      <div class="col-4 q-pa-md q-gutter-md">
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.email_add" label="Email Address" />
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.address" label="Present Address" />
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.beneficiary" label="Beneficiary" />
        <q-input standout="bg-teal text-white" readonly class="text-capitalize" v-model="userdata.value.business_work" label="Business/Work" />
      </div>
    </div>
  </q-page>
</template>

<script setup>
import { defineComponent, ref, inject, onMounted, computed } from 'vue'
import { useQuasar  } from "quasar";
import { useUserStore } from 'src/stores/userdata';


defineComponent({
  name: 'ProfilePage'
})

const userdata = ref({})
const useStore = useUserStore()
const userData = computed(() => useStore)


onMounted(() => {
  const user = inject('user')
  
  userdata.value = user
})


const $q = useQuasar();
const stylesLoaded = ref(false);


$q.loading.show();

setTimeout(() => {
  stylesLoaded.value = true;
  $q.loading.hide();
}, 300);

const capitalize = (str) => {
  return str.toLowerCase().replace(/\b\w/g, function (char) {
    return char.toUpperCase();
  });
};

</script>
