import Vue from 'vue'
import axios from 'axios'

axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

const api = {
    employees:{
        dashboard: () => axios.get('/employees/dashboard.json'),
    }
}

Vue.prototype.$api = api
