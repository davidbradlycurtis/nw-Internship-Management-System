<template>
    <div class="pastform form">
      <PastFormNotice/>
       <h1>Semester Date</h1>
    <h2> Student Information</h2>
    <table border="1">
    <tr>
    <th>Student Name</th>
    <th>{{ response.data[0].student_firstname }} {{ response.data[0].student_lastname }}</th>
  </tr>
  <tr>
    <td>Home Address</td>
    <td></td>
  </tr>
  <tr>
    <td>Telephone</td>
    <td></td>
  </tr>
  <tr>
    <td>S-Number</td>
    <td></td>
  </tr>
</table>
<h2>Buisness Information </h2>
<table border="1">
  <tr>
    <th>Organization Name</th>
    <th></th>
  </tr>
  <tr>
    <td>Orgainization Address</td>
    <td></td>
  </tr>
  <tr>
    <td>Sponsor/Supervisor</td>
    <td></td>
  </tr>
  <tr>
    <td>Email</td>
    <td></td>
  </tr>
  <tr>
    <td>Telephone</td>
    <td></td>
  </tr>
  <tr>
    <td>Other Arrangements</td>
    <td></td>
  </tr>
</table>
  <div class="buttongroup">
  <button class="formbutton"  @click="pullForm()"> Edit </button>
  </div>
  </div>
</template>

<script>
// components
import PastFormNotice from '@/components/PastFormNotice.vue'

// Services
import StudentService from '@/services/StudentService.js'

export default {
  name: 'Internship Agreement - Past Forms',
  components: {
    PastFormNotice
  },
  methods: {
    async pullInternship () {
      const response = await StudentService.GetAgreementForm(this.model)
      console.log(response.data)
    },
    pullForm () {
      // rerouting to new form
      this.$router.push('/student-internship-agreement/new-form')
    }
  }
}
</script>
