<template>
    <div class="studentinternshipaddform form">
        <form action="" @submit.prevent="sendInternship" >
          <vue-form-generator :schema="schema" :model="model" :options="formOptions"></vue-form-generator>
          <CustomFormGroupStudentAcknowledgment />
          <div class="buttongroup">
            <Button v-bind:buttontext="'Save Progress'" />
            <Button v-bind:buttontext="'Submit'" />
          </div>
        </form>
    </div>
</template>
<script>

import CourseAddFormSchema from '@/forms/CourseAddFormSchema.js'
// import axios from 'axios'
// Components
// import FormGroup from '@/components/FormGroup.vue'
import Button from '@/components/Button.vue'
// import FormSubmittedPop from '@/components/FormSubmittedPop.vue'
import CustomFormGroupStudentAcknowledgment from '@/components/CustomFormGroupStudentAcknowledgment.vue'
// Data
import CourseAddForm from '@/data/CourseAddForm.js'
// import StudentService from '@/services/StudentService'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    // FormGroup,
    Button,
    // FormSubmittedPop,
    CustomFormGroupStudentAcknowledgment
  },
  data () {
    return {
      model: {
        first_name: 'Caroline',
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
      CourseAddForm: CourseAddForm,
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  },
  methods: {
    async sendInternship () {
      try {
        // await axios.put('', this.model)
        alert('Form Details updates')
      } catch (e) {
        console.log(e)
        alert(e.message)
      }
    }
  }
}
</script>

<style lang="scss">
</style>

<!-- <FormGroup  v-for="group in CourseAddForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
        <CustomFormGroupStudentAcknowledgment />
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'" @click.native="sendForm(); submittedValue() "/>
          <Button v-bind:buttontext="'Submit Form'" @click.native="sendForm(); submittedValue() "/>
        </div>
      </div>
      <FormSubmittedPop v-if="submitted"/> -->
