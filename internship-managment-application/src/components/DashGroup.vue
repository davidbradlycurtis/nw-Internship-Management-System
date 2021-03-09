<template>
    <div class="dashgroup">
      <h3 class="internshiptitle">{{title}}</h3>
      <div class="flex-blocks">
        <div class="col" v-for="block in blocks" :key="block.title">
          <h4 class="formtitle">{{block.title}}</h4>
          <h5 class="status">Status</h5>
          <p class="formstatus">{{block.status}}</p>
        </div>
        <div class="filling-empty-space">
        </div>
      </div>
    </div>
</template>

<script>
export default {
  // Place holders
  data: () => ({
    // This will be where the season, year, and company of the internship, currently a place holders
    title: 'Insert season, year - Company',
    // Title of the form title should be fine to stay
    // The status is just a place holder for the mean time
    blocks: [
      { title: 'Internship course enrollment', status: 'approved' },
      { title: 'Internship application', status: 'prending review' },
      { title: 'Internship agreement', status: 'under review' }
    ]
  })
}
</script>

<style lang="scss">
</style>
