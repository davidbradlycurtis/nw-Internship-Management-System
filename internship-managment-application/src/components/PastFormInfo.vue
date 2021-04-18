<template>
    <div class="pastform">
      <h3 class="internshiptitle">{{cleantitle}}</h3>
      <div v-for="group in schema.groups" :key="group.legend" class="infogroup">
        <h4 v-if="group.infoDumpTitle">{{group.infoDumpTitle}}</h4>
        <table v-if="group.infoDumpTitle">
          <tr v-for="field in group.fields" :key="field.model">
            <td class="tablelabel" v-if="field.label && field.label.length < 25">{{field.label}}</td>
            <td v-if="field.label && field.label.length < 25" :class="field.model">{{data[field.model]}}</td>
          </tr>
        </table>
      </div>
      <div class="infogroup">
        <h4>Application Information</h4>
        <table>
          <tr>
            <td class="tablelabel">Date Submitted</td>
            <td>{{(data.application_date).slice(0, 10)}}</td>
          </tr>
        </table>
      </div>
      <div v-if="button" class="pastbuttonwrapper">
        <button class="pastbutton"  @click="pullForm"> Edit </button>
      </div>
    </div>
</template>
<script>
export default {
  name: 'PastFormInfo',
  props: ['schema', 'data', 'button'],
  data () {
    return {
      internshiptitle: 'Spring 2021'
    }
  },
  mounted () {
    document.getElementsByClassName('start_date').forEach(element => {
      element.innerHTML = (element.innerHTML).slice(0, 10)
    })
    document.getElementsByClassName('end_date').forEach(element => {
      element.innerHTML = (element.innerHTML).slice(0, 10)
    })
  },
  computed: {
    cleantitle () {
      const fulldate = this.data.application_date.split(':')[0].split('T')
      const year = (fulldate[0]).split('-')[0]
      const season = (fulldate[0]).split('-')[1]
      if (season >= 8 && season <= 12) {
        return 'Winter ' + year
      } else if (season >= 1 && season < 5) {
        return 'Spring ' + year
      } else {
        return 'Summer ' + year
      }
    }
  }
}
</script>
