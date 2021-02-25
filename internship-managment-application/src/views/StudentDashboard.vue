<template>
  <div class="sidenav">
    <Sidebar/>
    <div class="studentDash">
      <h1>Student Dashboard</h1>
      <router-link to="/student-internship-application">Student Intership Application</router-link> <br> <br>
      <router-link to="/student-internship-agreement">Student Intership Agreement</router-link> <br> <br>
      <router-link to="/student-internship-add-form">Student Intership Add Form</router-link> <br> <br>
      <router-link to="/student-review-status">Student Review Status</router-link>
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
