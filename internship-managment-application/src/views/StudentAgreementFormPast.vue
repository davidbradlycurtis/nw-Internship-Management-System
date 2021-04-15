<template>
  <div class="pastforms form">
  <PastFormNotice/>
    <div v-if="formdata.length >= 1">
      <PastFormInfo :data="object" :schema="schema" v-for="object in formdata" :key="object.form_id"/>
      <div class="buttongroup">
        <button class="formbutton"  @click="pullForm()"> Edit </button>
      </div>
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
    },
    pullForm () {
      // rerouting to new form
      this.$router.push('/student-internship-agreement/new-form')
      console.log('moving')
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
