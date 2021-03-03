<template>
    <div class="studentDash">
      <h1 class="title">Student Internship Application</h1>
      <InternshipApplicationStudentForm/>
      // this is commented out because when we merge with the add form this file will be in there
      // <FormGroup  v-for="group in ApplicationForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
    </div>
</template>

<script>
// components
// this is commented out because when we merge with the add form this file will be in there
// import FormGroup from '../components/FormGroup.vue'
import InternshipApplicationStudentForm from '../components/InternshipApplicationStudentForm.vue'
// data
// Cant pull data when there is no components
// import ApplicationForm from '../data/ApplicationForm.js'

export default {
  name: 'StudentInternshipApplication.vue',
  components: {
    InternshipApplicationStudentForm
    // FormGroup
  }
  // data () { return { ApplicationForm: ApplicationForm}}
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
