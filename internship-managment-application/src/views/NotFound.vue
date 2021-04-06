<template>
  <div class="notfound">
    <div class="imagewrapper">
      <img src="@/assets/images/N60-2Stack-W.png" alt="NW 2Stack White">
    </div>
    <p>Sorry, the page you are trying to reach does not exist.</p>
    <p>Try going back to home and repeating your action. Or, contact IT services for support.</p>
    <div>
      <button class="formbutton"><router-link to="/">Go Home</router-link></button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NotFound'
}
</script>
