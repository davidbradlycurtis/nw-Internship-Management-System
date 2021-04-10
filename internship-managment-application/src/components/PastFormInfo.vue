<template>
    <div class="pastform">
      <h3 class="internshiptitle">{{internshiptitle}}</h3>
      <div v-for="group in schema.groups" :key="group.legend" class="infogroup">
        <h4 v-if="group.infoDumpTitle">{{group.infoDumpTitle}}</h4>
        <table v-if="group.infoDumpTitle">
          <tr v-for="field in group.fields" :key="field.model">
            <td class="tablelabel" v-if="field.label && field.label.length < 20">{{field.label}}</td>
            <td v-if="field.label && field.label.length < 20">PUT QUERY HERE</td>
          </tr>
        </table>
      </div>
    </div>
</template>
<script>
export default {
  name: 'PastFormInfo',
  props: ['schema'],
  data () {
    return {
      internshiptitle: 'Spring 2021'
    }
  }
}
</script>
