<template>
    <div class="studentinternshipagreement form">
      <form action="">
        <vue-form-generator :schema="schema" :model="model" :options="formOptions"></vue-form-generator>
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'"/>
          <Button v-bind:buttontext="'Submit Form'" @click.native="submitted = !submitted"/>
        </div>
      </form>
      <FormSubmittedPop v-if="submitted"/>
    </div>
</template>

<script>
// Components
import Button from '@/components/Button.vue'
import FormSubmittedPop from '@/components/FormSubmittedPop.vue'
// import CustomFormGroupAgreementSignature from '@/components/CustomFormGroupAgreementSignature.vue'
// Schema
import AgreementFormSchema from '@/forms/AgreementFormSchema.js'

export default {
  name: 'StudentInternshipAgreement',
  components: {
    Button,
    FormSubmittedPop
  },
  data () {
    return {
      model: {
        agreement_sign_date: '',
        internship_start_date: '',
        internship_end_date: ''
      },
      schema: AgreementFormSchema,
      formOptions: {
        validateAfterChanged: true
      },
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  }
}
</script>

<style lang="scss">
</style>
