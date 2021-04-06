<template>
  <div class="wrapper">
    <div class="clicktosign" >
      <div class="signature">
        <p v-on:click="signed">{{ signature }}</p>
        <p class="clicklabel">{{this.schema.labelText}}</p>
      </div>
      <div class="date">
        <p>{{ new Date() | moment("MM-DD-YYYY") }}</p>
        <p class="clicklabel">Date</p>
      </div>
    </div>
  </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'
export default {
  name: 'ClickToSign',
  mixins: [abstractField],
  data: function () {
    return {
      signature: '(Click to sign)'
    }
  },
  methods: {
    signed: function (event) {
      this.signature = prompt('To sign your name on this document, please type your name in the input box below. By signing this document, you are insuring that all information on this form is true to your knowledge.').toUpperCase()
      while (this.signature === '') {
        this.signature = prompt('Oops, we didnt quite catch that. Please type your name in the input box below to sign this doucment')
      }
    }
  }
}
</script>
