<template>
    <div class="customformgroup formgroup">
        <h3 class="formgrouptitle">{{groupname}}</h3>
        <ul>
            <div v-for="label in input" :key="label.text">
              <li  :for="label.text">
                {{label.text}}
              </li>
            </div>
        </ul>
        <div class="full-textarea">
          <label>Other:</label>
          <textarea :id=other cols="30" rows="10"></textarea>
        </div>
    </div>
</template>
<script>
export default {
  props: ['groupname', 'input', 'other']
}
</script>
