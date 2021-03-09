<template>
    <div class="studentinternshipagreement form">
      <div class="form" v-if="!submitted">
        <FormGroup v-for="group in AgreementForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
        <CustomFormGroupAgreementPanel/>
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'"/>
          <Button v-bind:buttontext="'Submit Form'" @click.native="submitted = !submitted"/>
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
import CustomFormGroupAgreementPanel from '@/components/CustomFormGroupAgreementPanel.vue'
// Data
import AgreementForm from '@/data/AgreementForm.js'
// import AgreementPanel from '@/data/AgreementPanel.js'

export default {
  name: 'StudentInternshipAgreement',
  components: {
    FormGroup,
    Button,
    FormSubmittedPop,
    CustomFormGroupAgreementPanel
  },
  data () {
    return {
      AgreementForm: AgreementForm,
      // AgreementPanel: AgreementPanel,
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  }
}
</script>

<style lang="scss">
</style>
