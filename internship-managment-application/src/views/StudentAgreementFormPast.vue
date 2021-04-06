<template>
    <div class="pastform form">
      <PastFormNotice/>
      <PastAgreementTable/>
       <div class="buttongroup">
          <Button v-bind:buttontext="'Edit'"/> <!-- @click route to new form with their information -->
        </div>
    </div>
</template>

<script>

import PastFormNotice from '@/components/PastFormNotice.vue'
import PastAgreementTable from '@/components/PastAgreementTable.vue'
import Button from '@/components/Button.vue'
export default {
  name: 'Internship Agreement - Past Forms',
  components: {
    PastFormNotice,
    PastAgreementTable,
    Button
  }
}
</script>
