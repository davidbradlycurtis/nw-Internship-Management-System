<template>
    <div1 class="filedrop">
        <div>
            <input type="file" accept=".pdf" class="input-file">
            <p4>Drag and Drop here</p4>
            <br />
            <p5> Or </p5>
            <br />
            <p6> Browse files </p6>
        </div>
    </div1>
</template>

<script>
export default {
}
</script>

<style scoped lang="scss">
div {
    text-align: left;
}
div1 {
    outline: 3px dashed $theme-dash-gray; /* the dash box */
    border-radius: 21px;
    outline-offset: -10px;
    background: $theme-light-gray;
    color: $theme-black;
    padding: 100px 10px;
    min-height: 50px; /* minimum height */
    width: 1000px;
    position: relative;
    cursor: pointer;
}
  .input-file {
    opacity: 0; /* invisible but it's there! */
    width: 98%;
    height: 200px;
    position: absolute;
    cursor: pointer;
  }
  .filedrop:hover {
    background: $theme-light-gray; /* when mouse over to the drop zone, change color */
  }
</style>
