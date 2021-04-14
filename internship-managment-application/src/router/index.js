import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: '/student-dashboard',
    name: 'Home',
    meta: {
      visible: false
    }
  },
  {
    path: '/student-dashboard',
    name: 'student-dashboard',
    component: () => import(/* webpackChunkName: "studentDash" */'../views/StudentDashboard.vue'),
    meta: {
      title: 'Student Dashboard'
    }
  },
  {
    path: '/student-internship-application',
    name: 'internship-application-form',
    component: () => import('../views/StudentInternshipApplication.vue'),
    redirect: '/student-internship-application/new-form',
    meta: {
      title: 'Internship Application Form'
    },
    children: [
      {
        path: 'past-forms',
        name: 'internship-application-past-forms',
        component: () => import('../views/StudentApplicationFormPast.vue'),
        meta: {
          title: 'Internship Application Form - Past Forms'
        }
      },
      {
        path: 'new-form',
        name: 'internship-application-new-form',
        component: () => import('../views/StudentApplicationFormNew.vue'),
        meta: {
          title: 'Internship Application Form - New Form'
        }
      }
    ]
  },
  {
    path: '/student-internship-agreement',
    name: 'internship-agreement',
    component: () => import('../views/StudentInternshipAgreement.vue'),
    meta: {
      title: 'Internship Agreement'
    },
    children: [
      {
        path: 'past-forms',
        name: 'internship-agreement-past-forms',
        component: () => import('../views/StudentAgreementFormPast.vue'),
        meta: {
          title: 'Internship Agreement - Past Forms'
        }
      },
      {
        path: 'start-new-form',
        name: 'internship-agreement-start-new-form',
        redirect: '/student-internship-agreement',
        meta: {
          title: 'Start New Form'
        }
      }
    ]
  },
  {
    path: '/student-internship-add-form',
    name: 'internship-add-form',
    component: () => import('../views/StudentInternshipAddForm.vue'),
    redirect: '/student-internship-add-form/past-forms',
    meta: {
      title: 'Internship Add Form'
    },
    children: [
      {
        path: 'past-forms',
        name: 'internship-add-form-past-forms',
        component: () => import('../views/StudentAddFormPast.vue'),
        meta: {
          title: 'Internship Add Form - Past Forms'
        }
      },
      {
        path: 'new-form',
        name: 'internship-add-form-new-form',
        component: () => import('../views/StudentAddFormNew.vue'),
        meta: {
          title: 'Internship Add Form - New Form'
        }
      }
    ]
  },
  {
    path: '/:catchAll(.*)',
    name: '404 Error',
    component: () => import(/* webpackChunkName: "notFound" */'../views/NotFound.vue'),
    meta: {
      title: '404 Error',
      visible: false
    }
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
// router.replace({ path: '/', redirect: '/student-dashboard' })
export default router
