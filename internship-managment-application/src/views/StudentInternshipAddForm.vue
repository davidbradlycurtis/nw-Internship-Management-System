<template>
    <div class="studentinternshipaddform">
      <form class="form" v-if="!submitted" @submit="checkForm">
        <FormGroup  v-for="group in CourseAddForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
        <CustomFormGroupStudentAcknowledgment />
        <div class="buttongroup">
          <Button v-bind:buttontext="'Save Progress'" v-bind:type="'button'"/>
          <Button v-bind:buttontext="'Submit Form'" v-bind:type="'button'" @click.native="checkForm"/>
        </div>
      </form>
      <FormSubmittedPop v-if="submitted"/>
    </div>
</template>
<script>
// Components
import FormGroup from '@/components/FormGroup.vue'
import Button from '@/components/Button.vue'
import FormSubmittedPop from '@/components/FormSubmittedPop.vue'
import CustomFormGroupStudentAcknowledgment from '@/components/CustomFormGroupStudentAcknowledgment.vue'
// Data
import CourseAddForm from '@/data/CourseAddForm.js'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    FormGroup,
    Button,
    FormSubmittedPop,
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
    }
  },
  data () {
    return {
      CourseAddForm: CourseAddForm,
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  }
}
</script>

<style lang="scss">
</style>
