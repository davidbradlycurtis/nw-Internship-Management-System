import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import VueMoment from 'vue-moment'
import VueFormGenerator from 'vue-form-generator'

Vue.use(VueMoment)
Vue.use(VueFormGenerator)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
