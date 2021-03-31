<template>
    <nav class="nav bar-items">
        <MenuItem v-for="(r,i) in routes" :key="i" :route="r" />
    </nav>
</template>
<script>
import MenuItem from '@/components/MenuItem.vue'
export default {
  name: 'NavigationLinks',
  components: {
    MenuItem
  },
  computed: {
    routes () {
      return this.$router.options.routes
    }
  }
}
</script>
