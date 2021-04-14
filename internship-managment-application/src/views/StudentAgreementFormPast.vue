<template>
<PastFormNotice/>
  <div class="pastforms form">
    <div v-if="formdata.length >= 1">
      <PastFormInfo :data="object" :schema="schema" v-for="object in formdata" :key="object.form_id"/>
    </div>
    <div v-else>
      <UhOhNotice noticetext="It looks like you have not completed any INTERNSHIP COURSE ADD FORM's. To get started, click the link below."/>
    </div>
    <div class="buttongroup">
      <button class="formbutton"  @click="pullForm()"> Edit </button>
    </div>
    <router-link to="/student-internship-agreement-form/new-form" class="inpagelink">Start New Form</router-link>
  </div>
</template>

<script>
// schema
import AgreementFormSchema from '@/forms/AgreementFormSchema.js'
// components
import PastFormNotice from '@/components/PastFormNotice.vue'
import UhOhNotice from '@/components/UhOhNotice.vue'

// Services
import StudentService from '@/services/StudentService.js'

export default {
  name: 'Internship Agreement - Past Forms',
  components: {
    PastFormNotice
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
  },
  methods: {
    async getInternship () {
      await StudentService.GetAddForms(this.model).then((result) => {
        this.formdata = result.data[0]
      })
    },
    pullForm () {
      // rerouting to new form
      this.$router.push('/student-internship-agreement/new-form')
      console.log('moving')
    },
    created () {
      this.pullInternship()
    }
  }
}
</script>
