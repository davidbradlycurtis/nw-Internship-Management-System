<template>
    <div class="clicktosign">
      <div class="signature">
        <p v-on:click="signed">{{ signature }}</p>
        <p class="clicklabel">Requestor (Student) Signature</p>
      </div>
      <div class="date">
        <p>{{ new Date() | moment("MM-DD-YYYY") }}</p>
        <p class="clicklabel">Date</p>
      </div>
    </div>
</template>
<script>
export default {
  name: 'ClickToSign',
  data: function () {
    return {
      signature: '(Click to sign)'
    }
  },
  methods: {
    signed: function (event) {
      this.signature = prompt('To sign your name on this document, please type your name in the input box below. By signing this document, you are insuring that all information on this form is true to your knowledge.').toUpperCase()
    }
  }
}
</script>
