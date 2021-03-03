<template>
    <div class="home">
      <router-view/>
      <Footer/>
    </div>
</template>

<script>
import Footer from '@/components/Footer.vue'
// @ is an alias to /src

export default {
  name: 'Home',
  components: {
    Footer
  }
}
</script>

<style lang="scss">
</style>
