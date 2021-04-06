<template>
    <div class="header">
        <h1>{{$route.name.replaceAll('-', ' ')}}</h1>
    </div>
</template>
<script>
export default {
  name: 'Header'
}
</script>
