<template>
    <div class="pastforms form">
      <div v-if="formdata.length >= 1">
        <PastFormNotice/>
        <PastFormInfo :data="object" :schema="schema" v-for="object in formdata" :key="object.form_id"/>
      </div>
      <div v-else>
        <UhOhNotice noticetext="It looks like you have not completed any INTERNSHIP COURSE ADD FORM's. To get started, click the link below."/>
      </div>
      <router-link to="/student-internship-add-form/new-form" class="inpagelink">Start New Form</router-link>
    </div>
</template>

<script>
// Schema
import CourseAddFormSchema from '@/forms/CourseAddFormSchema.js'
// Services
import StudentService from '@/services/StudentService.js'
// Components
import PastFormNotice from '@/components/PastFormNotice.vue'
import PastFormInfo from '@/components/PastFormInfo.vue'
import UhOhNotice from '@/components/UhOhNotice.vue'

export default {
  name: 'InternshipCourseAddFormPastForms',
  components: {
    PastFormInfo,
    UhOhNotice,
    PastFormNotice
  },
  created () {
    this.getInternship()
  },
  methods: {
    async getInternship () {
      await StudentService.GetAddForms(this.model).then((result) => {
        this.formdata = result.data[0]
      })
    }
  },
  data () {
    return {
      model: {
        // Hardcoded uid
        student_id: 1
      },
      schema: CourseAddFormSchema,
      formdata: []
    }
  }
}
</script>
