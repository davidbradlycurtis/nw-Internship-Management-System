<template>
    <div class="studentinternshipaddform">
      <div class="form" v-if="!submitted">
        <FormGroup  v-for="group in CourseAddForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
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
// Data
import CourseAddForm from '@/data/CourseAddForm.js'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    FormGroup,
    Button,
    FormSubmittedPop
  },
  data () {
    return {
      CourseAddForm: CourseAddForm,
      ButtonList: ['Save Progress', 'Submit Form'],
      submitted: false
    }
  },
  methods: {
  }
}
</script>

<style lang="scss">
</style>
