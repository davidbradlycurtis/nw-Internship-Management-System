<template>
    <div class="studentinternshipagreement">
      <div class="form" v-if="!submitted">
        <CustomFormGroupAgreeToDates/>
        <FormGroup v-for="group in AgreementForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
        <CustomFormGroupAgreementPanel  v-for="group in PanelForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:other="group.other"/>
        <CustomFormGroupAgreementSignature/>
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
import CustomFormGroupAgreeToDates from '@/components/CustomFormGroupAgreeToDates.vue'
import FormGroup from '@/components/FormGroup.vue'
import Button from '@/components/Button.vue'
import FormSubmittedPop from '@/components/FormSubmittedPop.vue'
import CustomFormGroupAgreementPanel from '@/components/CustomFormGroupAgreementPanel.vue'
import CustomFormGroupAgreementSignature from '@/components/CustomFormGroupAgreementSignature.vue'
// Data
import AgreementForm from '@/data/AgreementForm.js'
import PanelForm from '@/data/PanelForm.js'

export default {
  name: 'StudentInternshipAgreement',
  components: {
    CustomFormGroupAgreeToDates,
    FormGroup,
    Button,
    FormSubmittedPop,
    CustomFormGroupAgreementPanel,
    CustomFormGroupAgreementSignature
  },
  data () {
    return {
      AgreementForm: AgreementForm,
      PanelForm: PanelForm,
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  }
}
</script>

<style lang="scss">
</style>
