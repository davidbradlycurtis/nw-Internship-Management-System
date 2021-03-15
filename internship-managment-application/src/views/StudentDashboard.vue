<template>
    <div class="studentDash">
      <InternshipStatusGroup v-for="internship in FormData" :key="internship.employer_name" v-bind:employer_name="internship.employer_name" v-bind:semester="getsemester(internship.start_date)" v-bind:year="getyear(internship.start_date)" v-bind:internship="internship.forms"/>
    </div>
</template>
<script>
// Components
import InternshipStatusGroup from '@/components/InternshipStatusGroup.vue'
// Data
import FormData from '@/data/FormStatus.js'

export default {
  name: 'StudentDashboard',
  components: {
    InternshipStatusGroup
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
