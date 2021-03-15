<template>
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 226.48 178.71" :data-value="datavalue">
        <g id="Layer_2" data-name="Layer 2">
            <g id="Layer_1-2" data-name="Layer 1">
                <path class="cls-4 bg" d="M27.09,165.49a100.74,100.74,0,1,1,173.64-2.28"/>
                <path class="cls-1 meter" d="M27.09,165.49a100.74,100.74,0,1,1,173.64-2.28"/>
                <path class="cls-2 meter" d="M27.09,165.49A100.76,100.76,0,0,1,198.25,59.15"/>
                <path class="cls-3 meter" d="M27.09,166.21a100.83,100.83,0,0,1,1-106.12"/>
            </g>
        </g>
        <text transform="matrix(1 0 0 1 43.4153 123.5525)" class="st3 percentage">{{datavalue}}%</text>
    </svg>
</template>
<script>
export default {
  name: 'ProgressBar',
  props: {
    datavalue: {
      type: Number,
      default: 0
    }
  },
  mounted () {
    // bar
    const meters = document.querySelectorAll('path.meter')
    meters.forEach(path => {
      var length = path.getTotalLength()
      path.style.strokeDashoffset = length
      path.style.strokeDasharray = length
      var value = parseInt(path.parentNode.parentNode.parentNode.getAttribute('data-value'))
      if (!value || value <= 0) {
        value = 100
      }
      var to = length * ((100 - value) / 100)
      path.getBoundingClientRect()
      path.style.strokeDashoffset = Math.max(0, to)
    })
    // number
    const percentages = document.querySelectorAll('text.percentage')
    percentages.forEach(text => {
      var stopvalue = this.datavalue
      var startvalue = 0
      var diff = stopvalue - startvalue
      var step = (diff > 0 ? 1 : -1)
      for (var i = 0; i < diff; i++) {
        setTimeout(function () {
          startvalue += step
          text.innerHTML = startvalue + '%'
        }, 25 * i)
      }
    })
  }
}

</script>
<style scoped>
    svg path {
        will-change: auto;
        stroke-width: 25px;
        stroke-miterlimit: round;
        transition: stroke-dashoffset 850ms ease-in-out;
    }
    .cls-1,.cls-2,.cls-3,.cls-4{
        fill:none;
        stroke-linecap:round;
        stroke-miterlimit:10;
        stroke-width:25px;
    }
    .cls-4 {
        stroke: #e0e0e0;
    }
    .cls-1{
        stroke:#008f62;
    }
    .cls-2{
        stroke:#006747;
    }
    .cls-3{
        stroke:#003d2a;
    }
    .percentage {
        font-family: 'Futura-Medium';
        font-size: 65px;
        fill: #006747;
    }

</style>
