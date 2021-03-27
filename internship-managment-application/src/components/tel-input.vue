<template>
    <div class="wrapper">
        <input type="tel" v-model="value">
    </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'TelephoneInput',
  mixins: [abstractField]
}
</script>
