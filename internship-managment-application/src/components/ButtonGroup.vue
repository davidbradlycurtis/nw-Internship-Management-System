<template>
    <div class="buttongroup">
        <Button v-for="button in ButtonList" :key="button" v-bind:buttontext="button" v-bind:type="type"/>
    </div>
</template>
<script>
import Button from '@/components/Button.vue'
export default {
  components: {
    Button
  },
  props: {
    ButtonList: Array
  }
}
</script>
