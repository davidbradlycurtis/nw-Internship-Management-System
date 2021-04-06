<script>
import { abstractField } from 'vue-form-generator'

export default {
  name: 'ListLabel',
  mixins: [abstractField]
}
</script>
<template>
    <div class="wrapper">
        <ul>
            <li v-for="text in (this.schema.labelText)" :key=text>{{text}}</li>
        </ul>
    </div>
</template>
