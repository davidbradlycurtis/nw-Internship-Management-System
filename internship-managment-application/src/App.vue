<template>
  <div id="app">
    <Sidebar/>
    <main>
      <CustomHeader />
      <router-view/>
      <Footer />
    </main>
  </div>
</template>

<script>
import Sidebar from '@/components/Sidebar.vue'
import CustomHeader from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'

export default {
  components: {
    CustomHeader,
    Sidebar,
    Footer
  },
  watch: {
    '$route' (to, from) {
      document.title = to.meta.title || 'NW Internship Management Application'
    }
  }
}
</script>

<style lang="scss">

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
