<template>
  <div class="sidenav">
    <Sidebar/>
    <div class="studentDash">
      <h1>Student Dashboard</h1>
    </div>
  </div>
</template>

<script>
import Sidebar from '@/components/Sidebar.vue'

export default {
  name: 'StudentDashboard',
  components: {
    Sidebar
  }
}
</script>

<style lang="scss">
</style>
