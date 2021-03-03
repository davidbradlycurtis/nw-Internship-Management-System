<template>
    <div class="studentDash">
      <h1>Student Add Form</h1>
      <FormGroup  v-for="group in CourseAddForm" :key="group.group_name" v-bind:groupname="group.group_name" v-bind:input="group.inputs" v-bind:note="group.note"/>
    </div>
</template>
<script>
// Components
import FormGroup from '@/components/FormGroup.vue'
// Data
import CourseAddForm from '@/data/CourseAddForm.js'

export default {
  name: 'StudentInternshipAddForm',
  components: {
    FormGroup
  },
  data () {
    return {
      CourseAddForm: CourseAddForm
    }
  }
}
</script>

<style lang="scss">
</style>
