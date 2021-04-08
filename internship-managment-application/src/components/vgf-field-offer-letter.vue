<template>
  <div class="wrapper attachfile">
    <p class="infotext">{{this.schema.text}}</p>
    <div class="filedrop">
      <p>Drag and Drop here</p>
      <p>Or</p>
      <label :for="this.schema.model">Browse files</label>
      <input type="file" :accept="this.schema.filetype" multiple="true" class="inputfile" :id="this.schema.model">
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
