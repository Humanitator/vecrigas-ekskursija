<template>
  <nav>
    <router-link to="/">Sākums</router-link>
    <router-link to="/about">Par</router-link>
    <router-link to="/map">Karte</router-link>
    <router-link to="/test">Darba lapa</router-link>
  </nav>

  <!-- Copyright is actually at bottom, but this fixes element stacking -->
  <div class="copyright">
      <h2>© 2023 Andris Seļāvo, Eduards Vugulis, Jānis Ozols, Kaspars Sikora, Raivo Rainsons, Rūdolfs Alainis</h2>
  </div>

  <router-view/>

  <footer>
    <div class="contacts">
      <h3 class="contacts-title">Kontakti:</h3>
      <ul class="contacts-list">
        <li >
        <p class="contact">Andris Seļāvo: </p> <p class="contact-tel">+371 29 901 370</p>
        </li>
        <li >
        <p class="contact">Eduards Vugulis: </p> <p class="contact-tel">+371 20 322 230</p>
        </li>
        <li >
        <p class="contact">Jānis Ozols: </p> <p class="contact-tel">+371 26 663 331</p>
        </li>
        <li >
        <p class="contact">Kaspars Sikora: </p> <p class="contact-tel">+371 28 643 750</p>
        </li>
        <li >
        <p class="contact">Raivo Rainsons: </p> <p class="contact-tel">+371 27 466 818</p>
        </li>
        <li >
        <p class="contact">Rūdolfs Alainis: </p> <p class="contact-tel">+371 20 128 605</p>
        </li>
      </ul>
    </div>
  </footer>
</template>

<style lang="scss">
  @import '@/assets/css/base.css';
</style>
