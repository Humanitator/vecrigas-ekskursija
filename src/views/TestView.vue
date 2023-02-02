<script setup>
    import { onMounted } from 'vue';
    import { ref } from 'vue';

    const answer_class = ref("hidden-answers")

    function ShowAnswers () {
        answer_class.value = "visible-answers"
    }

    function HideAnswers () {
        answer_class.value = "hidden-answers"
    }

    onMounted(() => {
        document.title = "Vecrīgas Ekskursija | DL"
    })
</script>

<template>
    <div class="orientation">
        <h1 class="title">Darba lapa</h1>
        
        <div class="test">
            <h2 class="subtitle">Jautājumi</h2>

            <ol class="question-list">
                <li class="question">
                    <p>Cik cilvēku tēli ir iekalti Brīvības piemineklī?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Cik lielgabalu lādiņi ir iemūrēti Pulvertornī?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Cik skursteņi ir Jēkabā Kazarmām?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Vai Vecrīgas mūris ir savienots ar blakus esošo māju (Latvijas kara muzeju)?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Cik lielgabali ir iemūrēti pie Zviedru vārtiem?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Cik karogu masti ir pie Rīgas pils? </p>
                    <hr>
                </li>
                <li class="question">
                    <p>Kas ir rakstīts virs vidējā Trīs brāļu durvīm?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Cik pulksteņi ir uz Rīgas Doma torņa? </p>
                    <hr>
                </li>
                <li class="question">
                    <p>Kādi gadskaitļi ir redzami virs astronomiskā pulksteņa Melngalvja nama priekšpusē?</p>
                    <hr>
                </li>
                <li class="question">
                    <p>Cik galvenās ieejas ir Rīgas Sv. Pētera baznīcai? </p>
                    <hr>
                </li>
            </ol>
        </div>

        <div class="answers">
            <h2 class="subtitle">Atbildes</h2>

            <button class="answer-button" v-on:click="ShowAnswers()">
                <h3>Parādīt atbildes</h3>
            </button>

            <div class="answer-sheet" :class="answer_class">
                <ol class="question-list">
                    <li class="question">
                        <p>Cik cilvēku tēli ir iekalti Brīvības piemineklī?</p>
                        <p class="answer">55</p>
                    </li>
                    <li class="question">
                        <p>Cik lielgabalu lādiņi ir iemūrēti Pulvertornī?</p>
                        <p class="answer">Septiņi</p>
                    </li>
                    <li class="question">
                        <p>Cik skursteņi ir Jēkabā Kazarmām?</p>
                        <p class="answer">34</p>
                    </li>
                    <li class="question">
                        <p>Vai Vecrīgas mūris ir savienots ar blakus esošo māju (Latvijas kara muzeju)?</p>
                        <p class="answer">Nē, nav.</p>
                    </li>
                    <li class="question">
                        <p>Cik lielgabali ir iemūrēti pie Zviedru vārtiem?</p>
                        <p class="answer">Trīs</p>
                    </li>
                    <li class="question">
                        <p>Cik karogu masti ir pie Rīgas pils? </p>
                        <p class="answer">12</p>
                    </li>
                    <li class="question">
                        <p>Kas ir rakstīts virs vidējā Trīs brāļu durvīm?</p>
                        <p class="answer">"Soli deo gloria!" (Lai slavēts vienīgi dievs! / Slava tikai dievam!).</p>
                    </li>
                    <li class="question">
                        <p>Cik pulksteņi ir uz Rīgas Doma torņa? </p>
                        <p class="answer">Četri</p>
                    </li>
                    <li class="question">
                        <p>Kādi gadskaitļi ir redzami virs astronomiskā pulksteņa Melngalvja nama priekšpusē?</p>
                        <p class="answer">1334. un 1999.</p>
                    </li>
                    <li class="question">
                        <p>Cik galvenās ieejas ir Rīgas Sv. Pētera baznīcai? </p>
                        <p class="answer">Trīs</p>
                    </li>
                </ol>
                <button class="answer-button" v-on:click="HideAnswers()">
                <h3>Aizvērt</h3>
            </button>
            </div>
        </div>
    </div>
</template>

<style lang="scss">
    @import '@/assets/css/test.css';
</style>