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
    border: 3px dashed $theme-dash-gray;
    border-radius: 10px;
    outline-offset: -10px;
    background: $theme-light-gray;
    color: $theme-black;
    padding: 55px 10px;
    min-height: 50px;
    width: 1000px;
    margin-top: 30px;
    margin-bottom: 2px;
    position: relative;
    cursor: pointer;
}
.filedrop:hover {
  background: $theme-hover-gray;
}
  .input-file {
    opacity: 0;
    width: 101%;
    height: 285px;
    margin-top: -135px;
    margin-left: -15px;
    position: absolute;
    cursor: pointer;
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
