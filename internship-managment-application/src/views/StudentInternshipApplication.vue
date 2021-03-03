<template>
    <div class="studentDash">
      <h1 class="title">Student Intership Application</h1>
      <InternshipApplicationStudentForm/>
    </div>
</template>

<script>

import InternshipApplicationStudentForm from '../components/InternshipApplicationStudentForm.vue'
export default {
  name: 'StudentInternshipApplication.vue',
  components: {
    InternshipApplicationStudentForm
  }
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
