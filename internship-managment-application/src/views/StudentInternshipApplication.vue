<template>
    <div class="studentDash">
      <h1 class="title">Student Internship Application</h1>
      <FormGroup  v-for="group in ApplicationForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
    </div>
</template>

<script>

import FormGroup from '../components/FormGroup.vue'
import ApplicationForm from '../data/ApplicationForm.js'

export default {
  name: 'StudentInternshipApplication.vue',
  components: {
    FormGroup
  },
  data () { return { ApplicationForm: ApplicationForm } }
}
</script>

<style lang="scss">
.title {
  text-align: center;
  font: normal normal bold 48px/63px Futura;
  letter-spacing: 0px;
  color: #006747;
  opacity: 1;
}
</style>
