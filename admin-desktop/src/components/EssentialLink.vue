<template>
  <q-item v-if="auth"
    :to="link"
  >
    <q-item-section
      v-if="icon"
      avatar
    >
      <q-icon :name="icon" />
    </q-item-section>

    <q-item-section>
      <q-item-label class="text-h5">{{ label }}</q-item-label>
    </q-item-section>
  </q-item>
</template>

<script>
import { defineComponent } from 'vue'

export default defineComponent({
  name: 'EssentialLink',
  props: {
    label: {
      type: String,
      required: true
    },
    link: {
      type: String,
      default: '/'
    },
    icon: {
      type: String,
      default: ''
    },
    auth: {
      type: Boolean,
      default: true
    }
  }
})
</script>

