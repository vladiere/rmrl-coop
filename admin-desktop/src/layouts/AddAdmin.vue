<template>
  <div class="q-pa-md q-gutter-sm">
    <q-btn label="Add Admin" color="secondary" @click="medium = true, isDisable = false" />
    <q-dialog v-model="medium" persistent>
      <q-card style="width: 700px; max-width: 80vw">
        <q-card-section>
          <div class="text-h6">Add Admin</div>
        </q-card-section>

        <q-form @submit.prevent="handleSubmit" @reset="onReset">
          <q-card-section class="q-pt-none">
            <div class="row q-gutter-sm">
              <div class="col">
                <q-input
                  square
                  standout
                  v-model="form.lastname"
                  label="Lastname"
                />
              </div>
              <div class="col">
                <q-input
                  square
                  standout
                  v-model="form.firstname"
                  label="Firstname"
                />
              </div>
            </div>
            <div class="q-mt-md">
              <q-input
                square
                standout
                v-model="form.email"
                label="Email"
                type="email"
              />
            </div>
            <div class="row q-gutter-sm q-mt-sm">
              <div class="col">
                <q-input
                  square
                  standout
                  v-model="form.username"
                  label="Username"
                />
              </div>
              <div class="col">
                <q-input
                  square
                  standout
                  v-model="form.password"
                  :type="isPwd ? 'password' : 'text'"
                  label="Password"
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
            </div>
          </q-card-section>

          <q-card-actions align="right" class="bg-white text-teal">
            <q-btn flat label="ADD" @click="description('add')" type="submit" :disable="isDisable"/>
            <q-btn flat label="UPDATE" @click="description('update')" type="submit" :disable="isDisable"/>
            <q-btn flat label="CANCEL" type="reset" v-close-popup />
          </q-card-actions>
        </q-form>
      </q-card>
    </q-dialog>
  </div>
</template>

<script setup>
import { ref, defineComponent } from "vue";
import { useQuasar } from "quasar";
import { api } from "src/boot/axios";

defineComponent({
  name: "AddAdmin",
});

const $q = useQuasar();
const medium = ref(false);
const isPwd = ref(true);
const isDisable = ref(false);
const desc = ref('')

const form = ref({
  firstname: "",
  lastname: "",
  username: "",
  password: "",
  email: "",
  desc: ""
});

const onReset = () => {
  form.value.firstname = "";
  form.value.lastname = "";
  form.value.username = "";
  form.value.password = "";
  form.value.email = "";
};

const description = (description) => {
  desc.value = description
}

const handleSubmit = async () => {

  if (desc.value === 'add') {

    if (form.value.firstname !== '' && form.value.lastname !== '' && form.value.email !== '' && form.value.username !== '' && form.value.password !== '') {
      form.value.desc = 'add'
      submitAdmin()
      isDisable.value = true

    } else {
      $q.notify({
        position: "top",
        type: "negative",
        message: "Please fill in the form to add a new admin",
      });
    }
  } else if (desc.value === 'update') {
    form.value.desc = 'update'
    submitAdmin()
    isDisable.value = true

  }
};

const submitAdmin = async () => {
  const config = {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  };

  await api
    .post("/register-admin", form.value, config)
    .then((res) => {
      if (res.data.status == 200) {
        $q.notify({
          position: "top",
          type: "positive",
          message: res.data.msg,
        });
      } else {
        $q.notify({
          position: "top",
          message: res.data.msg,
        });
      }
    })
    .catch((err) => console.error(err.message));
}



</script>
