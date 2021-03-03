<template>
    <div class="studentinternshipaddform form">
      <FormGroup  v-for="group in CourseAddForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
      <ButtonGroup v-bind:ButtonList="ButtonList" />
    </div>
</template>
<script>
// Components
import FormGroup from '@/components/FormGroup.vue'
import ButtonGroup from '@/components/ButtonGroup.vue'
// Data
import CourseAddForm from '@/data/CourseAddForm.js'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    FormGroup,
    ButtonGroup
  },
  data () {
    return {
      CourseAddForm: CourseAddForm,
      ButtonList: ['Save Progress', 'Submit Form']
    }
  }
}
</script>

<style lang="scss">
</style>
