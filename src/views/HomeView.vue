<script setup>
    import { onMounted } from 'vue';

    onMounted(() => {
        document.title = "Vecrīgas Ekskursija"
    })
</script>

<template>
    <div class="home">
      <img 
        class="home-bg"
        src="@/assets/img/objects/pulvertornis.jpeg"
        alt="">
        <div class="title-container">
          <h1 class="title">Ekskursija pa Vecrīgas gavenajiem kultūrvēsturiskajiem objektiem</h1>
          <h2 class="subtitle">Darbs veidots Rīgas Valsts 2. ģimnāzijas projektu nedēļas ietvaros</h2>
        </div>

        <div class="home-content">
          <div class="basic-info">
            <div class="object-preview-list">
              <h1 class="object-preview-title">Apskates objekti</h1>
              <ol>
                <li class="object-preview">
                    <h4>Brīvības piemineklis</h4>
                </li>
                <li class="object-preview">
                  <h4>Pulvertornis</h4>
                </li>
                <li class="object-preview">
                  <h4>Jēkaba kazarmas</h4>
                </li>
                <li class="object-preview">
                  <h4>Vecrīgas mūris — Zviedru vārti</h4>
                </li>
                <li class="object-preview">
                  <h4>Rīgas pils</h4>
                </li>
                <li class="object-preview">
                  <h4>Trīs brāļi</h4>
                </li>
                <li class="object-preview">
                  <h4>Rīgas doms</h4>
                </li>
                <li class="object-preview">
                  <h4>Melngalvju nams</h4>
                </li>
                <li class="object-preview">
                  <h4>Rīgas Sv. Pētera baznīca</h4>
                </li>
              </ol>
            </div>

            <div class="info-text">
              <h3>Maršruta apraksts</h3>
              <ul>
                <li>
                  <p>Ekskursijas maršruts ir apmēram 1.9 km garš, un mierīgā gājienā paņem apmēram 25 minūtes.</p>
                </li>
                <li>
                  <p>Izstaigājot maršrutu varēs uzzināt par Vecrīgas un Rīgas vēsturi. Maršrutu var gan staigāt, gan skriet.</p>
                </li>
              </ul>
              
              <h3>Aktivitātes</h3>
              <ul>
                <li>
                  <p>Maršrutu veicot vari arī pildīt dažādus uzdevumus mūsu izveidotajā darba lapā.</p>
                </li>
              </ul>
            </div>
          </div>
        </div>
    </div>
</template>

<style scoped lang="scss">
  @import '@/assets/css/home.css';
</style>