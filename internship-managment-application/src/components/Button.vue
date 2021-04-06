<template>
    <button class="formbutton" :type="type">
        {{buttontext}}
    </button>
</template>
<script>
export default {
  props: ['buttontext', 'type']
}
</script>
