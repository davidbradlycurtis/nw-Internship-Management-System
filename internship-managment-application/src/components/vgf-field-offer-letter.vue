<template>
  <div class="wrapper">
    <div>
      <p>{{this.schema.text}}</p>
    </div>
    <div class="filedrop">
      <input type="file" :accept="this.schema.filetype" class="input-file">
      <p class="dragdrop">Drag and Drop here</p>
      <p class="or"> Or </p>
      <p class="browse"> Browse files </p>
    </div>
    <p class="filetype">Accepted File Types: {{this.schema.filetype}}</p>
  </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'OfferLetter',
  mixins: [abstractField]
}
</script>
