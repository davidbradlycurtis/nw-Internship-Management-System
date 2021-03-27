<template>
    <div class="wrapper">
        <input type="text" v-model="value">
    </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'SNumberInput',
  mixins: [abstractField]
}
</script>
