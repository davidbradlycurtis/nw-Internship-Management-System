<template>
    <div class="studentDash" v-if="FormData.length > 0">
      <InternshipStatusGroup v-for="internship in FormData" :key="internship.employer_name" v-bind:employer_name="internship.employer_name" v-bind:semester="getsemester(internship.start_date)" v-bind:year="getyear(internship.start_date)" v-bind:internship="internship.forms"/>
    </div>
    <div class="studentDash" v-else>
      <UhOhNotice v-bind:noticetext="'It looks like you have no filled out any forms or applied for any internships! To get started, either click the button below, or click on Internship Add Form > New Form.'"/>
      <router-link to="/student-internship-add-form"><Button v-bind:buttontext="'Get Started'"/></router-link>
    </div>
</template>
<script>
// Components
import InternshipStatusGroup from '@/components/InternshipStatusGroup.vue'
import UhOhNotice from '@/components/UhOhNotice.vue'
import Button from '@/components/Button.vue'
// Data
import FormData from '@/data/FormStatus.js'

export default {
  name: 'StudentDashboard',
  components: {
    InternshipStatusGroup,
    UhOhNotice,
    Button
  },
  data () {
    return {
      FormData: FormData
    }
  },
  methods: {
    getsemester: function (startdate) {
      var month = startdate.slice(0, 2)
      if (month >= 8 && month <= 12) {
        return 'Fall'
      } else if (month >= 1 && month <= 4) {
        return 'Spring'
      } else {
        return 'Summer'
      }
    },
    getyear: function (startdate) {
      return startdate.slice(6)
    }
  }
}
</script>

<style lang="scss">
</style>
