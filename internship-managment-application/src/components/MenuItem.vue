<template>
    <div>
        <li v-if="isVisible" class="nav-items">
            <router-link :to="{name: route.name}" class="nav-link">{{name}}</router-link>
        </li>
        <div v-if="route.children && route.children.length">
            <MenuItem v-for="(r,i) in route.children" :key="i" :route="r" class="children"/>
        </div>
    </div>
</template>
<script>
export default {
  name: 'MenuItem',
  props: {
    route: {
      type: Object
    }
  },
  computed: {
    isVisible () {
      if (this.route.meta && (this.route.meta.visible === undefined || this.route.meta.visible)) {
        return true
      }
      return false
    },
    name () {
      if (this.route.name.includes('past-forms')) {
        return 'Past Forms'
      }
      return this.route.name.toLowerCase().split('-').map(s => s.charAt(0).toUpperCase() + s.slice(1)).join(' ')
    }
  }
}
</script>
