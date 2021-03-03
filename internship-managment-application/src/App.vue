<template>
  <div id="app">
    <Sidebar/>
    <router-view> </router-view>
    <Footer />
  </div>
</template>

<script>
import Sidebar from '@/components/Sidebar.vue'
import Footer from '@/components/Footer.vue'

export default {
  components: {
    Sidebar,
    Footer
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
  grid-template-columns: 1.25fr 6.75fr;
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
