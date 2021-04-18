<template>
    <div class="header">
        <h1>{{ headertitle }}</h1>
    </div>
</template>
<script>
export default {
  name: 'Header',
  computed: {
    headertitle () {
      const name = this.$route.name
      if (name.includes('past')) {
        return name.replaceAll('-', ' ').replaceAll('past forms', '')
      } else if (name.includes('new')) {
        return name.replaceAll('-', ' ').replaceAll('new form', '')
      } else {
        return name.replaceAll('-', ' ')
      }
    }
  }
}
</script>
