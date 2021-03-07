import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    meta: {
      title: 'Student Dashboard'
    }
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
    name: 'Student Dashboard',
    component: () => import(/* webpackChunkName: "studentDash" */'../views/StudentDashboard.vue'),
    meta: {
      title: 'Student Dashboard'
    }
  },
  {
    path: '/student-internship-application',
    name: 'Internship Application Form',
    component: () => import('../views/StudentInternshipApplication.vue'),
    meta: {
      title: 'Internship Application Form'
    }
  },
  {
    path: '/student-internship-agreement',
    name: 'Internship Agreement',
    component: () => import('../views/StudentInternshipAgreement.vue'),
    meta: {
      title: 'Internship Agreement'
    }
  },
  {
    path: '/student-internship-add-form',
    name: 'Internship Course Add Form',
    component: () => import('../views/StudentInternshipAddForm.vue'),
    meta: {
      title: 'Internship Course Add Form'
    }
  },
  {
    path: '/student-review-status',
    name: 'Student Dashboard',
    component: () => import('../views/StudentReviewStatus.vue'),
    meta: {
      title: 'Student Dashboard'
    }
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
