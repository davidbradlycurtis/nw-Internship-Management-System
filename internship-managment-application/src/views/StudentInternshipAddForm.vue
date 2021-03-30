<template>
    <div class="studentinternshipaddform form">
        <form action="" @submit.prevent="sendInternship" >
          <vue-form-generator :schema="schema" :model="model" :options="formOptions"></vue-form-generator>
          <CustomFormGroupStudentAcknowledgment />
          <div class="buttongroup">
            <button class="formbutton" type="submit" @click="save()">Save Progress</button>
            <button class="formbutton" type="submit" @click="submit(); save()">Submit</button>
          </div>
        </form>
    </div>
</template>
<script>
// Services
import StudentService from '@/services/StudentService.js'
// Components
// import Button from '@/components/Button.vue'
import CustomFormGroupStudentAcknowledgment from '@/components/CustomFormGroupStudentAcknowledgment.vue'
// Schema
import CourseAddFormSchema from '@/forms/CourseAddFormSchema.js'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    // Button,
    CustomFormGroupStudentAcknowledgment
  },
  methods: {
    checkForm: function (event) {
      const inputs = document.querySelectorAll('input')
      var okay = true
      inputs.forEach((input) => {
        if (input.value.length <= 0) {
          okay = false
        }
      })
      if (okay && document.getElementsByClassName('signature')[0].firstChild.innerText !== '(Click to sign)') {
        this.submitted = true
      } else {
        // Put UhOh notice here when student dashboard gets pulled into main
      }
    },
    async sendInternship () {
      console.log('Model: ', this.model)
      if (this.edit) {
        const response = await StudentService.EditAddForm(this.model)
        console.log(response.data)
      } else {
        const response = await StudentService.AddFormCreate(this.model)
        console.log(response)
      }
    },
    submit () {
      this.model.submitted = 1
    },
    save () {
      this.model.date = new Date().getFullYear() + '-' + String(new Date().getMonth() + 1).padStart(2, '0') + '-' + String(new Date().getDate()).padStart(2, '0')
      this.model.signature = this.model.first_name + ' ' + this.model.last_name
      // Hardcoded uid will need to be changed
      this.model.uid = 1
    }
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
      // ButtonList: ['Save Progress', 'Submit Form'],
      edit: false
    }
  }
}
</script>

<style lang="scss">
</style>
