<template>
  <q-layout view="lHh Lpr lFf" >
    <q-header elevated class="bg-blue-grey-6">
      <q-toolbar>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        />

        <q-toolbar-title>
          RMRL Coop
        </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      elevated
    >
      <q-list>
        <q-item-label
          header
          class="bg-blue-grey-10 text-white"
        >
          RMRL Coop
        </q-item-label>
        <q-space />
        <EssentialLink
          v-for="link in essentialLinks"
          :key="link.title"
          v-bind="link"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref } from 'vue'
import EssentialLink from 'components/EssentialLink.vue'

const role = 'admin'

const linksList = [
  {
    label: 'Members',
    icon: 'groups',
    link: '/home',
    auth: true
  },
  {
    label: 'Employees',
    icon: 'badge',
    link: '/employees',
    auth: role === 'admin' ? true : false
  },
  {
    label: 'Petty Cash',
    icon: 'wallet',
    link: '/piti_cash',
    auth: true
  },
  {
    label: 'Savings',
    icon: 'savings',
    link: '/savings',
    auth: true
  },
  {
    label: 'Loan',
    icon: 'credit_score',
    link: '/loan',
    auth: true
  },
  {
    label: 'Admin',
    icon: 'security',
    link: '/admin',
    auth: role === 'admin' ? true : false
  },
  {
    label: 'Login Log',
    icon: 'lock_clock',
    link: '/loginlog',
    auth: true
  },
  {
    label: 'Logout',
    icon: 'logout',
    link: '/'
  },
]

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink
  },

  setup () {
    const leftDrawerOpen = ref(false)

    return {
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer () {
        leftDrawerOpen.value = !leftDrawerOpen.value
      }
    }
  }
})
</script>
