<template>
    <div class="customformgrouptwo formgroup">
        <h3 class="formgrouptitle">Offer Letter</h3>
        <div>
          <p>If you have been given an offer letter from your internship, please attatch a PDF version of it down below.</p>
        </div>
        <div>
            <p></p>
        </div>
        <FileDrop />
    </div>
</template>
<script>
import FileDrop from '@/components/FileDrop.vue'

export default {
  name: 'OfferLetter',
  components: {
    FileDrop
  }
}
</script>
