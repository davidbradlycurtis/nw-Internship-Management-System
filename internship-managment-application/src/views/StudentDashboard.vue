<template>
    <div class="studentDash">
      <h1>Student Dashboard</h1>
      <DashGroup/>
  </div>
</template>
<script>

import DashGroup from '@/components/DashGroup.vue'

export default {
  name: 'StudentDashboard',
  components: {
    DashGroup
  }
}
</script>

<style lang="scss">
</style>
