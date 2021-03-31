<template>
    <div>
        <li v-if="isVisible" class="nav-item">
            <router-link :to="{name: route.name}" class="nav-link">{{name}}</router-link>
            <div v-if="route.children && route.children.length">
                <MenuItem v-for="(r,i) in route.children" :key="i" :route="r" class="children"/>
            </div>
        </li>
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
      } else if (this.route.name.includes('new-form')) {
        return 'Start New Form'
      }
      return this.route.name.toLowerCase().split('-').map(s => s.charAt(0).toUpperCase() + s.slice(1)).join(' ')
    }
  }
}
</script>
