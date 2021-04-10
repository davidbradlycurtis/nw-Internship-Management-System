<template>
    <div class="pastforms form">
      <PastFormInfo :schema="schema" />
    </div>
</template>

<script>
// Schema
import CourseAddFormSchema from '@/forms/CourseAddFormSchema.js'
// Services
import StudentService from '@/services/StudentService.js'
// Components
import PastFormInfo from '@/components/PastFormInfo.vue'

export default {
  name: 'InternshipCourseAddFormPastForms',
  components: {
    PastFormInfo
  },
  created () {
    this.getInternship()
  },
  methods: {
    async getInternship () {
      const response = await StudentService.GetAddForms(this.model)
      console.log(response)
    }
  },
  data () {
    return {
      model: {
        // Hardcoded uid
        student_id: 1
      },
      schema: CourseAddFormSchema
    }
  }
}
</script>
