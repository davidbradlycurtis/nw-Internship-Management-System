<template>
    <div class="customformgroup formgroup">
        <h3 class="formgrouptitle">Signed and Accepted By:</h3>
        <CustomAgreementClickToSign />
    </div>
</template>
<script>
import CustomAgreementClickToSign from '@/components/CustomAgreementClickToSign.vue'

export default {
  name: 'CustomFormGroupAgreementSignature',
  components: {
    CustomAgreementClickToSign
  }
}
</script>
