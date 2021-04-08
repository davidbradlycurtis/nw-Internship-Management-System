<template>
    <div class="studentinternshipapplication form">
      <form action="">
        <vue-form-generator :schema="schema" :model="model" :options="formOptions"></vue-form-generator>
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'"/>
          <Button v-bind:buttontext="'Submit Form'" @click.native="submitted = !submitted"/>
        </div>
      </form>
    </div>
</template>

<script>
// Componenets
import Button from '@/components/Button.vue'
// Schema
import InternshipApplicationFormSchema from '@/forms/InternshipApplicationFormSchema.js'

export default {
  name: 'StudentInternshipApplication.vue',
  components: {
    Button
  },
  data () {
    return {
      model: {
        student_street_line_1: ''
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

<style lang="scss">
</style>
