<template>
    <div class="studentinternshipapplication form">
      <form action="" @submit.prevent="sendInternship">
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
import InternshipApplicationFormSchema from '@/forms/InternshipApplicationFormSchema.js'

export default {
  name: 'StudentInternshipApplication.vue',
  components: {
  },
  methods: {
    async sendInternship () {
      console.log('Model: ', this.model)
      if (this.edit) {
        const response = await StudentService.EditInternshipForm(this.model)
        console.log(response.data)
      } else {
        const response = await StudentService.InternshipFormCreate(this.model)
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
        student_line_1: '',
        student_line_2: '',
        student_city: '',
        student_zip: '',
        student_state: '',
        employer_name: '',
        department: '',
        street_line_1: '',
        street_line_2: '',
        city: '',
        zip_code: '',
        state: '',
        international_phone: '',
        supervisor_name: '',
        supervisor_email: '',
        site_phone: '',
        start_date: '',
        end_date: '',
        notes: '',
        offer_letter: '',
        submitted: 0,
        // Hardcoded uid will need to be changed
        uid: 1
      },
      schema: InternshipApplicationFormSchema,
      formOptions: {
        validateAfterChanged: true
      },
      edit: false
    }
  }
}
</script>
