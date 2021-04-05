import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: '/student-dashboard'
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
    },
    children: [
      {
        path: 'past-forms',
        name: 'Internship Application Form- Past Form',
        component: () => import('../views/StudentApplicationFormPast.vue'),
        meta: {
          title: 'Internship Application Form - Past Forms'
        }
      }
    ]
  },
  {
    path: '/student-internship-agreement',
    redirect: { name: 'Internship Agreement' },
    children: [
      {
        path: 'past-forms',
        redirect: { name: 'Internship Agreement - Past Forms' }
      },
      {
        path: 'start-new-form',
        redirect: { name: 'Internship Agreement' }
      }
    ]
  },
  {
    path: '/student-internship-agreement/past-forms',
    name: 'Internship Agreement - Past Forms',
    component: () => import('../views/StudentAgreementFormPast.vue'),
    meta: {
      title: 'Internship Agreement - Past Forms'
    }
  },
  {
    path: '/student-internship-agreement/start-new-form',
    name: 'Internship Agreement',
    component: () => import('../views/StudentInternshipAgreement.vue'),
    meta: {
      title: 'Internship Agreement'
    }
  },
  {
    path: '/student-internship-add-form',
    name: 'Internship Add Form',
    component: () => import('../views/StudentInternshipAddForm.vue'),
    meta: {
      title: 'Internship Add Form'
    },
    children: [
      {
        path: 'past-forms',
        name: 'Internship Add Form',
        component: () => import('../views/StudentAddFormPast.vue'),
        meta: {
          title: 'Internship Add Form - Past Forms'
        }
      }
    ]
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
// router.replace({ path: '/', redirect: '/student-dashboard' })
export default router
