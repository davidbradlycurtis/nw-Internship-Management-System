import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    user_id: 1,
    user_role: 'student',
    isLoggedIn: false
  },
  mutations: {
    logIn (state, payload) {
      state.user_id = payload.id
      state.user_role = payload.user_role
      state.isLoggedIn = true
    },
    logOut (state) {
      state.user_id = null
      state.user_role = null
      state.isLoggedIn = false
    },
    updateID (state, payload) {
      state.user_id = payload.id
    },
    updateRole (state, payload) {
      state.user_role = payload.role
    }
  },
  actions: {
  },
  modules: {
  }
})
