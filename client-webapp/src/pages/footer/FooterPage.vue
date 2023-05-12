<template>
  <q-page padding>
    <footer class="animate__animated animate__fadeInUp animate_repeat-1">
        <div class="company">
            <img src='@/assets/IconLogo.svg' alt="">
            <img src='@/assets/BankName.svg' alt="">
        </div>
        <div class="about">
            <span>Home</span>
            <span>About</span>
            <span>Service</span>
            <span>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque voluptates illum, dolorem aperiam distinctio iure maxime neque ex ullam rerum.</span>
        </div>
    </footer>
  </q-page>
</template>

<script setup>
import { defineComponent } from 'vue'

defineComponent({
  name: 'FooterPage'
})

import './Footer.scss'
</script>

<style scoped>

</style>
