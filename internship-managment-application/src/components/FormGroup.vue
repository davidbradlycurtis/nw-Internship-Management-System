<template>
    <div class="formgroup">
        <h3 class="formgrouptitle">{{groupname}}</h3>
        <!-- once we get the backend setup, replace the hard code with a for-loop -->
        <div v-for="label in input" :key="label.name" :class="label.width">
            <label :for="label.name">
                {{label.name}}:
            </label>
            <input :type="label.type">
        </div>
        <p v-if="note" class="note">{{note}}</p>
        <p v-if="textarea" class="textarea">{{textarea}}<p>
        <div v-if="textarea">
                <textarea rows="5" cols="74"></textarea>
        </div>
    </div>
</template>
<script>
export default {
  props: ['groupname', 'input', 'note', 'textarea']
}
</script>
