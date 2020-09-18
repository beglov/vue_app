<template lang="pug">
  div
    img(src="/assets/logo.png" width="86" height="130" alt="Logo")
    span Current user: {{ current_user.email }} |
    a(href="/employees/sign_out" @click.prevent="logout") Log out
</template>

<script>
import axios from "axios";

export default {
  name: 'Navbar',
  props: ['current_user'],
  methods: {
    logout(){
      axios.delete('/employees/sign_out')
    },
  }
}
</script>
