<template>
    <div class="pastforms form">
      <div >
        <PastFormInfo :data="object" :shema="schema" v-for="object in formdata" :key="object.form_id"/>
      </div>
      <div >
        <UhOhNotice noticetext="It looks like you have not completed an INTERNSHIP APPLICATION FORM yet. To get started on a new form, click the link below!"/>
      </div>
      <router-link to="/student-internship-application/new-form" class="inpagelink">Start New Form</router-link>
    </div>
</template>

<script>
// Schema
import InternshipApplicationFormSchema from '@/forms/InternshipApplicationFormSchema.js'
// Services
import StudentService from '@/services/StudentService.js'
// Components
import PastFormInfo from '@/components/PastFormInfo.vue'
import UhOhNotice from '@/components/UhOhNotice.vue'

export default {
  name: 'Internship-Application-Form-Past-Forms',
  components: {
    PastFormInfo,
    UhOhNotice
  },
  created () {
    this.getApplication()
  },
  method: {
    async getApplication () {
      await StudentService.GetInternshipForms(this.model).then((result) => {
        this.formdata = result.data[0]
        console.log(this.formdata)
      })
    }
  },
  data () {
    return {
      model: {
        // Hardcoded uid
        student_id: 1
      },
      schema: InternshipApplicationFormSchema,
      formdata: []
    }
  }
}
</script>
