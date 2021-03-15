<template>
    <div class="internshipstatusblock">
        <h4 class="formtitle">{{title}}</h4>
        <h5 class="status">Status</h5>
        <p class="formstatus">{{status}}</p>
    </div>
</template>
<script>
export default {
  name: 'InternshipStatusBlock',
  components: {
  },
  props: ['title', 'status']
}
</script>
