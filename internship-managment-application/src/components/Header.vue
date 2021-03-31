<template>
    <div class="header">
        <h1>{{$route.name.split('-').join(' ')}}</h1>
    </div>
</template>
<script>
export default {
  name: 'Header'
}
</script>
