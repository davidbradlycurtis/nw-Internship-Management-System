<template>
    <div class="studentinternshipaddform">
      <div class="form" v-if="!submitted">
        <FormGroup  v-for="group in CourseAddForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
        <CustomFormGroupStudentAcknowledgment />
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'" @click.native="sendForm(); submittedValue() "/>
          <Button v-bind:buttontext="'Submit Form'" @click.native="sendForm(); submittedValue() "/>
        </div>
      </div>
      <FormSubmittedPop v-if="submitted"/>
    </div>
</template>
<script>
// Components
import FormGroup from '@/components/FormGroup.vue'
import Button from '@/components/Button.vue'
import FormSubmittedPop from '@/components/FormSubmittedPop.vue'
import CustomFormGroupStudentAcknowledgment from '@/components/CustomFormGroupStudentAcknowledgment.vue'
// Data
import CourseAddForm from '@/data/CourseAddForm.js'
import StudentService from '@/services/StudentService'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    FormGroup,
    Button,
    FormSubmittedPop,
    CustomFormGroupStudentAcknowledgment
  },
  data () {
    return {
      CourseAddForm: CourseAddForm,
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  },
  methods: {
    async sendInternship () {
      // INPUT HERE should be replaced with the correct field value
      const response = await StudentService.AddFormSubmit({
        student_id: 'INPUT HERE',
        studentLastname: 'INPUT HERE',
        studentFirstname: 'INPUT HERE',
        uid: 'INPUT HERE',
        studentEmail: 'INPUT HERE',
        facultyLastname: 'INPUT HERE',
        facultyFirstname: 'INPUT HERE',
        facultyEmail: 'INPUT HERE',
        studentSignature: 'INPUT HERE',
        applicationDate: 'INPUT HERE',
        submitted: this.submitted
      })
      console.log(response.data)
    },
    submittedValue () {
      this.submitted = !this.submitted
    }
  }
}
</script>

<style lang="scss">
</style>
