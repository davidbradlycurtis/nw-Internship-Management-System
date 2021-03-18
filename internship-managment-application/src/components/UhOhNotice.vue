<template>
    <div class="uhohnotice notice">
        <h2 class="noticetitle">Uh oh!</h2>
        <p class="noticetext">{{noticetext}}</p>
    </div>
</template>
<script>
export default {
  name: 'UhOhNotice',
  props: ['noticetext']
}
</script>
