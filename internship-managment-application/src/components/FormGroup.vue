<template>
    <div class="formgroup">
        <h3 class="formgrouptitle">{{groupname}}</h3>
        <!-- once we get the backend setup, replace the hard code with a for-loop -->
        <div v-for="label in input" :key="label.name" :class="label.width">
            <label :for="label.name">
                {{label.name}}:
            </label>
            <input :type="label.type" :name="label.name" required="required">
        </div>
        <p v-if="note" class="note">{{note}}</p>
    </div>
</template>
<script>
export default {
  props: ['groupname', 'input', 'note']
}
</script>
