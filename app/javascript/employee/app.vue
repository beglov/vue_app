<template lang="pug">
  #app
    template(v-if="loading")
      p Loading...
    template(v-else-if="error")
      p Error :-(
    template(v-else)
      navbar(:current_user="current_user")
      dashboard(:clients="clients" @addClient="addClient")
</template>

<script>
import Navbar from './components/navbar'
import Dashboard from './components/dashboard'

export default {
  data() {
    return {
      current_user: {},
      clients: [],
      loading: true,
      error: false,
    }
  },
  created (){
    this.loadData()
  },
  methods: {
    loadData(){
      this.loading = true
      this.$api.employees.dashboard().then(({data}) => {
        this.current_user = data.current_user
        this.clients = data.clients
      })
      .catch(() => (this.error = true))
      .finally(() => this.loading = false)
    },
    addClient(client) {
      this.clients.push(client)
    },
  },
  components: {
    Navbar,
    Dashboard,
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

.red {
  color: orange;
}
</style>
