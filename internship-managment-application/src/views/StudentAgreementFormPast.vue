<template>
  <div class="pastforms form">
    <div v-if="formdata.length >= 1">
      <PastFormNotice/>
      <PastFormInfo :data="object" :schema="schema" v-for="object in formdata" :key="object.form_id" :button="true"/>
    </div>
    <div v-else>
      <UhOhNotice noticetext="It looks like you have not completed any INTERNSHIP COURSE ADD FORM's. To get started, click the link below."/>
    </div>
    <router-link to="/student-internship-agreement-form/new-form" class="inpagelink">Start New Form</router-link>
  </div>
</template>

<script>
// Schema
import AgreementFormSchema from '@/forms/AgreementFormSchema.js'
// Services
import StudentService from '@/services/StudentService.js'
// components
import PastFormNotice from '@/components/PastFormNotice.vue'
import PastFormInfo from '@/components/PastFormInfo.vue'
import UhOhNotice from '@/components/UhOhNotice.vue'

export default {
  name: 'InternshipAgreementPastForms',
  components: {
    PastFormNotice,
    PastFormInfo,
    UhOhNotice
  },
  created () {
    this.getInternship()
  },
  methods: {
    async getInternship () {
      await StudentService.GetAgreementForm(this.model).then((result) => {
        this.formdata = result.data[0]
      })
    }
  },
  data () {
    return {
      model: {
      // Hardcoded value
        student_id: 1
      },
      schema: AgreementFormSchema,
      formdata: []
    }
  }
}
</script>
