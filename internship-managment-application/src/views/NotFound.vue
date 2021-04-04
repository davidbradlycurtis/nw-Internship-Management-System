<template>
  <div class="notfound">
      <img src="@/assets/images/N60-2Stack-W.png" alt="NW 2Stack White">
      <h2>Sorry, the page you are trying to reach does not exist.</h2>
      <h2>Try going back to home and repeating your action. Or, contact IT services for support.</h2>
      <div>
          <p><router-link to="/">Go Home</router-link></p>
      </div>
  </div>
</template>

<script>
export default {
  name: 'NotFound'
}
</script>

<style lang="scss">
</style>
