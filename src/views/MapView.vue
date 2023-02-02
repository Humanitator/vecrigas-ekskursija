<script setup>
    import { onMounted } from 'vue';
    
    onMounted(() => {
        document.title = "Vecrīgas Ekskursija | Karte"
    })
</script>

<template>
    <div class="map">

        <img
         class="background"
         src="@/assets/img/objects/brivibasPiemineklis.png"
         alt="background image">
        
        <h1 class="title">Karte</h1>
        <div class="map-img">
            <img src="@/assets/img/Map.png" alt="Bilde">    
        </div>
        
    </div>
</template>

<style lang="scss">
    @import '@/assets/css/map.css';
</style>