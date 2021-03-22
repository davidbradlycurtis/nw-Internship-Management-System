<template>
    <div class="studentinternshipaddform form">
        <form action="" @submit.prevent="sendInternship" >
          <vue-form-generator :schema="schema" :model="model" :options="formOptions"></vue-form-generator>
          <CustomFormGroupStudentAcknowledgment />
          <div class="buttongroup">
            <Button v-bind:buttontext="'Save Progress'" />
            <button class="formbutton" type="submit">Submit</button>
          </div>
        </form>
    </div>
</template>
<script>
// Services
import StudentService from '@/services/StudentService.js'
// Components
import Button from '@/components/Button.vue'
import CustomFormGroupStudentAcknowledgment from '@/components/CustomFormGroupStudentAcknowledgment.vue'
// Schema
import CourseAddFormSchema from '@/forms/CourseAddFormSchema.js'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    Button,
    CustomFormGroupStudentAcknowledgment
  },
  data () {
    return {
      model: {
        first_name: '',
        last_name: '',
        u_num: '',
        email: '',
        faculty_first_name: '',
        faculty_last_name: '',
        faculty_email: ''
      },
      schema: CourseAddFormSchema,
      formOptions: {
        validateAfterChanged: true
      },
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  },
  methods: {
    async sendInternship () {
      const response = await StudentService.AddFormSubmit(this.model)
      console.log(response.data)
    }
  }
}
</script>

<style lang="scss">
</style>
