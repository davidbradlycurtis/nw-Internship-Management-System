<template>
    <div class="internshipstatusgroup">
      <!-- Later down the line, this can be replaced with a for loop -->
      <h3 class="internshiptitle">{{semester}} {{year}} -<wbr> {{employer_name}}</h3>
      <div class="statusgroup">
        <InternshipStatusBlock v-for="form in internship" :key="form.form_name" v-bind:title="form.form_name" v-bind:status="form.application_status" v-bind:progressamount="getprogress(form)"/>
      </div>
    </div>
</template>

<script>
import InternshipStatusBlock from '@/components/InternshipStatusBlock'

export default {
  name: 'InternshipStatusGroup',
  components: {
    InternshipStatusBlock
  },
  props: ['employer_name', 'semester', 'year', 'internship'],
  methods: {
    // Need to define steps and how to store, this will do for now
    getprogress: function (form) {
      var totalpoints = 0
      var totalsteps = 4
      if (form.submitted) {
        totalpoints += 1
      }
      if (form.approved_by) {
        totalpoints += 1
      }
      return (totalpoints / totalsteps) * 100
    }
  }
}
</script>
