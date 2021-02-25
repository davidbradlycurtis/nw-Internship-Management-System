<template>
  <div id="app">
    <Sidebar/>
    <router-view/>
  </div>
</template>

<script>
import Sidebar from '@/components/Sidebar.vue'
export default {
  components: {
    Sidebar
  }
}
</script>

<style lang="scss">

#app {
  font-family: $theme-font-family;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: $theme-black;
  display: grid;
  grid-template-columns: 1fr 6fr;
}

#nav {
  padding: 30px;

  a {
    font-weight: bold;
    color: $theme-black;

    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
