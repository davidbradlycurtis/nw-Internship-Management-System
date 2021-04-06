<template>
    <div class="studentinternshipagreement form">
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
// Components
// Schema
import AgreementFormSchema from '@/forms/AgreementFormSchema.js'

export default {
  name: 'StudentInternshipAgreement',
  components: {
  },
  methods: {
    async sendInternship () {
      console.log('Model: ', this.model)
      if (this.edit) {
        const response = await StudentService.EditAgreementForm(this.model)
        console.log(response.data)
      } else {
        const response = await StudentService.AgreementFormCreate(this.model)
        console.log(response)
      }
    },
    submit () {
      // This gets called on Save Progress???
      this.model.submitted = 1
    },
    save () {
      this.model.date = new Date().getFullYear() + '-' + String(new Date().getMonth() + 1).padStart(2, '0') + '-' + String(new Date().getDate()).padStart(2, '0')
    }
  },
  data () {
    return {
      model: {
        agreement_date: '',
        start_date: null,
        end_date: null,
        first_name: '',
        last_name: '',
        student_address: '',
        student_phone_number: null,
        business_address: '',
        supervisor_email: '',
        student_id: null,
        business_name: '',
        supervisor_name: '',
        business_arrangements: null,
        supervisor_phone_number: null,
        other_student_agreements: null,
        other_supervisor_agreements: null,
        other_university_agreements: null,
        submitted: 0,
        // Hardcoded uid will need to be changed
        uid: 1
      },
      schema: AgreementFormSchema,
      formOptions: {
        validateAfterChanged: true
      },
      edit: false
    }
  }
}
</script>

<style lang="scss">
</style>
