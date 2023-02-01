<script setup>
    import { onMounted } from 'vue';
    
    onMounted(() => {
        document.title = "Vecrīgas Ekskursija | Karte"
    })
</script>

<template>
    <div class="map">
        <h1 class="title">Karte</h1>
    </div>
</template>

<style>
    @import '@/assets/css/map.css';
</style>