<template>
  <div class = "sidenav">
    <Sidebar/>
    <div class="home">
      <router-view/>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import Sidebar from '@/components/Sidebar.vue'

export default {
  name: 'Home',
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
