<template>
    <div class="filedrop">
        <div class="icon-arrow"></div>
        <div class="icon-arrow2"></div>
        <div>
            <input type="file" accept=".pdf" class="input-file">
            <p4>Drag and Drop here</p4>
            <br />
            <p5> Or </p5>
            <br />
            <p6> Browse files </p6>
        </div>
    </div>
</template>

<script>
export default {
}
</script>

<style scoped lang="scss">
div {
    text-align: left;
}
.filedrop {
    border: 3px dashed $theme-dash-gray; /* the dash box */
    border-radius: 10px;
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
  .icon-arrow {
      width: 6px;
      height: 50px;
      background-color: $theme-green;
      position: relative;
      top: -14px;
      left: 482px;
  }
  .icon-arrow:after {
      content: "";
      display: inline-block;
      width: 34px;
      height: 6px;
      background-color: $theme-green;
      transform: rotate(45deg);
      position: absolute;
      right: -25px;
      bottom: 36px;
  }
    .icon-arrow:before {
      content: "";
      display: inline-block;
      width: 34px;
      height: 6px;
      background-color: $theme-green;
      transform: rotate(-45deg);
      position: absolute;
      right: -4px;
      bottom: 36px;
  }
  .icon-arrow2 {
      width: 47px;
      height: 6px;
      background-color: $theme-green;
      position: relative;
      top: -20px;
      left: 462px;
  }
</style>
