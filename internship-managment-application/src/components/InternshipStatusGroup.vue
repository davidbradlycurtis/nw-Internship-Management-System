<template>
    <div class="internshipstatusgroup">
      <!-- Later down the line, this can be replaced with a for loop -->
      <h3 class="internshiptitle">{{title}}</h3>
      <div class="statusgroup">
        <InternshipStatusBlock v-for="internship in blocks" :key="internship.title" v-bind:title="internship.title" v-bind:status="internship.status"/>
      </div>
    </div>
</template>

<script>
import InternshipStatusBlock from '@/components/InternshipStatusBlock'

export default {
  name: 'InternshipStatusGroup',
  components: {
    InternshipStatusBlock
  },
  // Place holders
  data: () => ({
    // This will be where the season, year, and company of the internship, currently a place holders
    title: 'Insert season, year - Company',
    // Title of the form title should be fine to stay
    // The status is just a place holder for the mean time
    blocks: [
      { title: 'Internship course enrollment', status: 'approved' },
      { title: 'Internship application', status: 'pending review' },
      { title: 'Internship agreement', status: 'under review' }
    ]
  })
}
</script>

<style lang="scss">
</style>
