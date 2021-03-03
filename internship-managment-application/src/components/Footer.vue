<template>
  <!-- Footer -->
  <mdb-footer color="black" class="font-medium pt-4 mt-4">
      <div class="footer">
      <mdb-container fluid>
        &copy; Copyright 2021 Dream Team All Rights Reserved
      </mdb-container>
    </div>
    <mdb-container class="text-left">
            <div class="footer-main-div">
            <ul>
                  <router-link to="/student-internship-add-form">Internship Add Form</router-link> |
                    <router-link to="/student-internship-application">Internship Application</router-link> |
                    <router-link to="/student-review-status">Review Status</router-link> |
                    <router-link to="/student-internship-agreement">Internship Agreement</router-link>
                 <!--<a href="#">Internship Add Form</a> |
                 <a href="#">Internship Application</a> |
                 <a href="#">Review Status</a> |
                 <a href="#">Internship Agreement</a> | -->
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
