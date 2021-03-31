<template>
    <div class="side-nav">
      <div class="title">
        <router-link to="/student-dashboard"><img src="@/assets/images/N60-2Stack-W.png" alt="NW 2Stack White"></router-link>
      </div>
      <NavigationLinks />
    </div>
</template>

<script>
import NavigationLinks from '@/components/NavigationLinks.vue'
export default {
  name: 'Sidebar',
  components: {
    NavigationLinks
  },
  data: () => ({
    items: [
      {
        title: 'Internship Add Form',
        url: '/student-internship-add-form',
        subitems: [
          { title: 'Past Forms', url: '/student-internship-add-form/past-forms' },
          { title: 'Start New Form', url: '/student-internship-add-form' }
        ]
      },
      {
        title: 'Internship Application',
        url: '/student-internship-application',
        subitems: [
          { title: 'Past Forms', url: '/student-internship-application/past-forms' },
          { title: 'Start New Form', url: '/student-internship-application' }
        ]
      },
      { title: 'Student Dashboard', url: '/student-dashboard' },
      {
        title: 'Internship Agreement',
        url: '/student-internship-agreement',
        subitems: [
          { title: 'Past Forms', url: '/student-internship-agreement/past-forms' },
          { title: 'Start New Form', url: '/student-internship-agreement' }
        ]
      }
    ]
  })
}
</script>

<style lang="scss">
</style>
