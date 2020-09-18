<template lang="pug">
  div.dashboard
    p Dashboard
    div.new-client
      form(v-on:submit.prevent="onSubmit")
        input(v-model="fullname" placeholder="fullname")
        input(v-model="phone" placeholder="phone")
        input(v-model="email" placeholder="email")
        input(type="submit")
    div(v-for="client in clients" :key="client.id")
      client(:client="client")
</template>

<script>
import Client from './clients/client'

export default {
  name: 'Dashboard',
  props: ['clients'],
  data() {
    return {
      fullname: "",
      phone: "",
      email: "",
    }
  },
  methods: {
    onSubmit() {
      this.$emit('addClient', {
        fullname: this.fullname,
        phone: this.phone,
        email: this.email,
      })
    },
  },
  components: {
    Client,
  },
}
</script>
