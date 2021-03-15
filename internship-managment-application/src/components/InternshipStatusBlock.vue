<template>
    <div class="internshipstatusblock">
        <h4 class="formtitle">{{title}}</h4>
        <ProgressBar v-bind:datavalue="progressamount" class="progressbar"/>
        <h5 class="status">Status</h5>
        <p class="formstatus">{{status}}</p>
    </div>
</template>
<script>
import ProgressBar from '@/components/SVG/ProgressBar.vue'
export default {
  name: 'InternshipStatusBlock',
  components: {
    ProgressBar
  },
  props: ['title', 'status', 'progressamount']
}
</script>
