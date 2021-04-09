<template>
    <div class="pastform form">
      <PastFormNotice/>
    <h1>Semester Date</h1>
    <table border="1">
    <thead>
      <tr>
        <th>Student First Name</th>
        <th>Student Last Name</th>
        <th>Student 919</th>
        <th>Student Email</th>
        <!-- and so on -->
      </tr>
    </thead>
    <tbody>
      <td>{{ response.data[0].student_firstname }}></td>
      <td>{{ response.data[0].student_lastname }}></td>
      <td>{{ response.data[0].student_id }}></td>
      <td>{{ response.data[0].student_id }}></td>
      <!-- and so on -->
    </tbody>
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
  data:{
    return{
      //Hardcoded value
      student_id:1
    }
  },
  methods: {
    async pullInternship () {
      const response = await StudentService.GetAgreementForm(this.model)
      console.log(response.data)
    },
    pullForm () {
      // rerouting to new form
      this.$router.push('/student-internship-agreement/new-form')
      console.log('moving')
    },
    created (){
      this.pullInternship()
    }
  }
}
</script>
