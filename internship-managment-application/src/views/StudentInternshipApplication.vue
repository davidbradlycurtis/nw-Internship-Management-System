<template>
    <div class="studentDash form">
      <div class="form" v-if="!submitted">
        <FormGroup  v-for="group in ApplicationForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'"/>
          <Button v-bind:buttontext="'Submit Form'" @click.native="submitted = !submitted"/>
        </div>
      </div>
      <FormSubmittedPop v-if="submitted"/>
    </div>
</template>

<script>

import FormGroup from '@/components/FormGroup.vue'
import Button from '@/components/Button.vue'
import FormSubmittedPop from '@/components/FormSubmittedPop.vue'
import ApplicationForm from '@/data/ApplicationForm.js'

export default {
  name: 'StudentInternshipApplication.vue',
  components: {
    FormGroup,
    Button,
    FormSubmittedPop
  },
  data () {
    return {
      ApplicationForm: ApplicationForm,
      ButtonList: ['Save Progress', 'Submit Form'].length,
      submitted: false
    }
  }
}
</script>

<style lang="scss">
</style>
