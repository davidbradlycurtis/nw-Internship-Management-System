<template>
    <div class="wrapper">
      <p v-if="this.schema.beforeText">{{this.schema.beforeText}}</p>
      <input :type="this.schema.cinputType" v-model="value">
      <p v-if="this.schema.afterText">{{this.schema.afterText}}</p>
    </div>
</template>
<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'IntegratedInput',
  mixins: [abstractField]
}
</script>
