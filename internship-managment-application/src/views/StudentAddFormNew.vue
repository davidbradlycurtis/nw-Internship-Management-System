<template>
    <div class="studentinternshipaddform form">
        <form action="" @submit.prevent="sendInternship" >
          <vue-form-generator :schema="schema" :model="model" :options="formOptions"></vue-form-generator>
          <div class="buttongroup">
            <button class="formbutton" type="submit" @click="save()">Save Progress</button>
            <button class="formbutton" type="submit" @click="save(); submit()">Submit</button>
          </div>
        </form>
    </div>
</template>
<script>
// Services
import StudentService from '@/services/StudentService.js'
// Schema
import CourseAddFormSchema from '@/forms/CourseAddFormSchema.js'

export default {
  name: 'StudentInternshipAddFormNew',
  methods: {
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
        faculty_email: '',
        add_date_signed: (new Date()),
        submitted: 0,
        // Hardcoded uid will need to be changed
        uid: 1
      },
      schema: CourseAddFormSchema,
      formOptions: {
        validateAfterChanged: true
      },
      edit: false
    }
  }
}
</script>
