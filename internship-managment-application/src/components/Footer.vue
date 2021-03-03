
<template>
  <!-- Footer -->
  <mdb-footer color="blue" class="font-small pt-4 mt-4">
      <div class="footer">
      <mdb-container fluid>
        &copy; Copyright 2021 Dream Team All Rights Reserved: <a href="https://www.nwmissouri.edu/"> nwmissouri </a>
      </mdb-container>
    </div>
    <mdb-container class="text-left">
        <h5 class="title">Navigation</h5>
            <div class="footer-main-div">
            <ul>
                 <li><router-link to="/student-internship-add-form">Internship Add Form</router-link></li>
                    <li><router-link to="/student-internship-application">Internship Application</router-link></li>
                    <li><router-link to="/student-review-status">Review Status</router-link></li>
                    <li><router-link to="/student-internship-agreement">Internship Agreement</router-link></li> 
                 
              </ul>
        </div>
    </mdb-container>
  </mdb-footer>
<!-- Footer -->
</template>
<script>
export default {
  name: 'Footer'
}
</script>
<style lang="scss">
</style>
