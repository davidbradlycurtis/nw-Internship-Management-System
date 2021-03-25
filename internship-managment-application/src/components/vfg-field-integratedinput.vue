<template>
    <div class="wrapper">
      <p>{{this.schema.text}}</p>
    </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'IntegratedInput',
  mixins: [abstractField],
  mounted () {
    console.log('here i am')
  }
}
</script>
