<template>
  <div class="sidenav">
    <Sidebar/>
    <div class="studentDash">
      <h1>Student Add Form</h1>
    </div>
  </div>
</template>

<script>
import Sidebar from '@/components/Sidebar.vue'

export default {
  name: 'sidenav',
  components: {
    Sidebar
  }
}
</script>

<style lang="scss">
// places sidebar to the left
 .sidenav{
  display:grid;
  grid-template-columns: 1fr 6fr;
  height: 150vh;
  width: 100vw;
  }
</style>
