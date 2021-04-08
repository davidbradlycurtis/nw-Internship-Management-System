<template>
    <div class="side-nav">
      <div id="menu-icon" v-on:click="hamburgerTransform">
        <div id="hamburger"></div>
      </div>
      <div class="title">
        <router-link to="/student-dashboard"></router-link>
      </div>
      <NavigationLinks />
    </div>
</template>

<script>
import NavigationLinks from '@/components/NavigationLinks.vue'
export default {
  name: 'Sidebar',
  components: {
    NavigationLinks
  },
  methods: {
    hamburgerTransform: function (event) {
      const hamburger = document.getElementById('hamburger')
      const nav = document.getElementById('navigation')
      if (hamburger.classList.contains('active') || nav.classList.contains('show')) {
        hamburger.classList.remove('active')
        nav.classList.remove('show')
      } else {
        hamburger.classList.add('active')
        nav.classList.add('show')
      }
    }
  }
}
</script>

<style lang="scss">
</style>
