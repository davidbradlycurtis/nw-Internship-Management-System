import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: '/student-dashboard'
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {
    path: '/student-dashboard',
    name: 'StudentDashboard',
    component: () => import(/* webpackChunkName: "studentDash" */'../views/StudentDashboard.vue')
  },
  {
    path: '/student-internship-application',
    name: 'StudentInternApplication',
    component: () => import('../views/StudentInternshipApplication.vue')
  },
  {
    path: '/student-internship-agreement',
    name: 'StudentInternAgreement',
    component: () => import('../views/StudentInternshipAgreement.vue')
  },
  {
    path: '/student-internship-add-form',
    name: 'StudentInternshipAddForm',
    component: () => import('../views/StudentInternshipAddForm.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
// router.replace({ path: '/', redirect: '/student-dashboard' })
export default router
