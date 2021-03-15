<template>
    <div class="studentDash">
      <h1>Student Dashboard</h1>
      <InternshipStatusGroup />
  </div>
</template>
<script>

import InternshipStatusGroup from '@/components/InternshipStatusGroup.vue'

export default {
  name: 'StudentDashboard',
  components: {
    InternshipStatusGroup
  }
}
</script>

<style lang="scss">
</style>
