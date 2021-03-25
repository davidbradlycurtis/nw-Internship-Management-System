import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import VueMoment from 'vue-moment'
import VueRouter from 'vue-router'
import VueFormGenerator from 'vue-form-generator'
import VuePikaday from '@netcz/vue-pikaday'
import TelInput from '@/components/tel-input.vue'
import SNumberInput from '@/components/s-number-input.vue'
import ListLabel from '@/components/vfg-field-listlabel.vue'
import ClickToSign from '@/components/vfg-field-clicktosign.vue'

Vue.use(VueMoment)
Vue.use(VueRouter)
Vue.use(VueFormGenerator)
Vue.use(VuePikaday)

Vue.component('field-tel-input', TelInput)
Vue.component('field-s-number-input', SNumberInput)
Vue.component('field-listlabel', ListLabel)
Vue.component('field-clicktosign', ClickToSign)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
