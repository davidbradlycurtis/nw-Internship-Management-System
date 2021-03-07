<template>
    <div class="customformgroup formgroup">
        <h3 class="formgrouptitle">Student Acknowledment of Repsonsibility</h3>
        <div>
          <p>By registering for classes at Northwest Missouri State University:</p>
          <ul>
            <li>I agree to pay all fees and other financial obligations to the University as they become due. I understand that the non-payment of any financial obligation may result in my administrative withdrawal from classes.</li>
            <li>I understand that the first bill of each semester will be mailed to my permanent address, and that all subsequent bills will be emailed to my University email account.</li>
            <li>I understand the payment due dates for the fall semester are the 15th of August, September, October, and November. Payment due dates for the spring semester are the 15th of January, February, March and April. Payment for the summer semester is the 15th of May.</li>
            <li>I understand that if I do not pay my bill in full by the start of the semester, or sign up for an installment plan, I will be auto-enrolled in an installment plan and/or a $20 late fee will be applied to my account.</li>
            <li>I understand that, if my financial obligations are not paid when due, the University may retain an attorney or collection agency to assist with the collection of the outstanding financial obligation. I understand that the collection agency may report balances and payment history to any or all national credit bureaus. I agree to reimburse the University for actual costs of collection, including reasonable interest, reasonable attorney’s fees, court costs, and reasonable collection agency fees.</li>
            <li>I understand that I must go into CatPAWS by the first day of the term and verify that I intend to attend the courses in which I am enrolled, or my enrollment will be cancelled.</li>
          </ul>
        </div>
        <ClickToSign />
    </div>
</template>
<script>
import ClickToSign from '@/components/ClickToSign.vue'

export default {
  name: 'CustomFormGroupStudentAckowledgment',
  components: {
    ClickToSign
  }
}
</script>
