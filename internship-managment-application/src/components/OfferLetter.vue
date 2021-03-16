<template>
    <div class="offerformgroup formgroup">
        <h3 class="formgrouptitle">Offer Letter</h3>
        <div>
          <p1>If you have been given an offer letter from your internship, please attatch a PDF version of it down below.</p1>
        </div>
        <div>
            <p></p>
        </div>
        <FileDrop />
        <div>
        </div>
        <div>
            <p2>Accepted File Types: PDF Only</p2>
        </div>
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
