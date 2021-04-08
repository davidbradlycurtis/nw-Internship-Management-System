<template>
  <div class="wrapper attachfile">
    <p class="infotext">{{this.schema.text}}</p>
    <div class="filedrop">
      <img src="../assets/images/upload.svg" alt="upload icon" class="uploadsvg">
      <p>Drag and Drop here</p>
      <p>Or</p>
      <label :for="this.schema.model">Browse files</label>
      <input type="file" :accept="this.schema.filetype" multiple="true" class="inputfile" :id="this.schema.model" @change="displayFileName">
    </div>
    <p class="filetype">Accepted File Types: {{this.schema.filetype}}</p>
    <p v-if="uploadedfiles.length > 0" class="uploadedfiles">Uploaded Files: <span v-for="elem in uploadedfiles" :key="elem">{{elem}}</span></p>
  </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'OfferLetter',
  mixins: [abstractField],
  data () {
    return {
      uploadedfiles: []
    }
  },
  methods: {
    displayFileName (event) {
      this.uploadedfiles = []
      event.target.files.forEach(element => {
        if (this.uploadedfiles.length === event.target.files.length - 1) {
          this.uploadedfiles.push(element.name)
        } else if (event.target.files.length > 0 && (this.uploadedfiles.length < event.target.files.length)) {
          this.uploadedfiles.push(element.name + ', ')
        }
      })
    }
  }
}
</script>
