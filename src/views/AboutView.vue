<script setup>
    import { onMounted } from 'vue';
    import { ref } from 'vue';

    const visibleClass = "details-visible"
    const hiddenClass = "details-hidden"

    const brivibas_piemineklis_class = ref(hiddenClass)
    const pulvertornis_class = ref(hiddenClass)
    const jekaba_kazarmas_class = ref(hiddenClass)
    const muris_varti_class = ref(hiddenClass)
    const rigas_pils_class = ref(hiddenClass)
    const tris_brali_class = ref(hiddenClass)
    const rigas_doms_class = ref(hiddenClass)
    const peterbaznica_class = ref(hiddenClass)
    const melngalvju_nams_class = ref(hiddenClass)

    var currentShown = -1

    const details = [
        brivibas_piemineklis_class,
        pulvertornis_class,
        jekaba_kazarmas_class,
        muris_varti_class,
        rigas_pils_class,
        tris_brali_class,
        rigas_doms_class,
        melngalvju_nams_class,
        peterbaznica_class,
    ]

    function HideAll() {
        brivibas_piemineklis_class.value = hiddenClass
        pulvertornis_class.value = hiddenClass
        jekaba_kazarmas_class.value = hiddenClass
        muris_varti_class.value = hiddenClass
        rigas_pils_class.value = hiddenClass
        tris_brali_class.value = hiddenClass
        rigas_doms_class.value = hiddenClass
        melngalvju_nams_class.value = hiddenClass
        peterbaznica_class.value = hiddenClass
    }

    function ShownOne(whichOne) {
        HideAll()
        if (whichOne > -1) {
            details[whichOne].value = visibleClass
        }
    }

    onMounted(() => {
        document.title = "Vecrīgas Ekskursija | Par"
    })
</script>

<template>
    <div class="about">
        <h1 class="title">Par ekskursiju / maršrutu</h1>

        <div class="object-details-container">
            <div class="brivibas-piemineklis object-details" :class="brivibas_piemineklis_class">
                <h1 class="object-details-title">Brīvības piemineklis</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Brīvības piemineklis</b> ir Latvijas brīvības cīņās kritušo piemiņai celts piemineklis. 
                    Tas ir Latvijas valstiskuma, vienotības, neatkarības un brīvības simbols. <br>
                    42 metrus augstais piemineklis ir veidots no pelēka un sarkana granīta, travertīna, dzelzsbetona un vara. 
                    Pieminekļa kompozīciju veido trīspadsmit skulptūras un bareljefi, kuros attēlota Latvijas vēsture un kultūra. 
                    Pieminekļa galotnē atrodas Brīvības tēls — 
                    jauna sieviete Milda, kura rokās tur trīs zeltītas zvaigznes, 
                    kuras simbolizē trīs Latvijas kultūrvēsturiskos novadus. <br>
                    Pie pieminekļa atrodas goda sarze, kuru mūsdienās veic Nacionālo Bruņoto
                    spēku Štāba bataljona Goda sardzes rota.
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Brīvības piemineklis tika atklāts 1935.gada 18.novembri, Latvijas valsts pasludināšanas 17. gadadienā.
                    Ideja par brīvības cīņām veltītu pieminekli parādijās 1922.gadā,
                    kad toreizējais Latvijas premjerministrs Zigfrīds Anna Meierovics izveidoja konkursu "piemiņas staba" celtniecībai. <br>
                    Konkursā uzvarēja Kārļa Zāles projekts "Mirdzi kā zvaigzne!". <br>
                    Pieminekļa konstrukciju finansēja ar tautas ziedojumiem <br>
                    Brīvības piemineklis ir ticis restaurēts trīs reizes (1962., 1981. un 1998.-2001. gadā).
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Mūsdienās brīvības piemineklis atrodas Brīvības laukumā, Rīgas centrā.
                    Pēc bijušā Latvijas valsts prezidenta Valda Zatlera iniciatīvas, 2018.gadā tika dibināts Brīvības pieminekļa izgaismošanas fonds.
                    2011. gada novembrī tika atklāta Brīvības pieminekļa goda telpa, kas atrodas pieminekļa iekšienē, kur iepriekš atradās saimniecības telpa. 
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="pulvertornis object-details" :class="pulvertornis_class">
                <h1 class="object-details-title">Pulvertornis</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Pulvertornis</b>, agrāk saukts arī par Smilšu torni, ir pulvertornis, kas atrodas Rīgā, 
                    Latvijā. Tas ir valsts nozīmes arhitektūras piemineklis, "Latvijas Kara muzeja" faktiskajā valdījumā un lietojumā. 
                    Tas arī ir viens no Latvijas Kara muzeja korpusiem (Smilšu iela 20). <br>
                    Torņa diametrs ir 14,3 metri, augstums - 25,5 metri, bet sienu biezums ir līdz 3 metriem.
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Pirmo reizi tornis minēts 1330. gadā, kā Smilšu tornis.
                    Pulvertornis savulaik bija nozīmīgākais Rīgas nocietinājums, jo sargāja ieeju pilsētā.
                    1621. gada zviedru uzbrukuma laikā visu torni,
                    izņemot pagrabstāvu, sagrāva. 1650.gadā uz pagrabstāva uzbūvēja tagad redzamo Pulvertorni. <br>
                    Pulvertorņa nosaukums tam ir no 1650.gada, jo kopš tā laika tajā tika glabāti šaujampulvera krājumi.
                    Tornī atradies cietums, kurā bijuši moku kambari. Pulvertornī glabāja ieročus līdz pat 1883. gadam. <br>
                    1916. gadā Pulvertornī izvietoja jaundibināto latviešu strēlnieku pulku muzeju, ko 1919. gadā pārdēvēja par Latvijas Kara muzeju. 
                    1937.—1939. gados tornim piebūvēja jaunu muzeja korpusu.
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Mūsdienās pulvertornis ir viens no Latvijas Kara muzeja korpusiem.
                    Tas kalpo kā Rīgas bagātās vēstures un kultūras mantojuma simbols, 
                    un populārs tūrisma galamērķis un orientieris pilsētā.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="jekaba-kazarmas object-details" :class="jekaba_kazarmas_class">
                <h1 class="object-details-title">Jēkaba kazarmas</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Jēkaba Kazarmas</b> atrodas Torņa ielā 4. Aptuvenais Kazarmu garums ir 450 metri. 
                    To dzeltenīgās sienas ir labi pamanāmas starp vecrīgas pelēcīgajām mājām. 
                    Šeit atrodas vienas no trīs vecrīgas kazarmām, šīs ir vienīgās kuras saglabājušās līdz musdienām.
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Tās sāka celt laikā no 1776. līdz 1784. Gadam. 1904. Gadā Jēkaba Kazarmās tika atklāta ātrās palīdzības stacija. 
                    Te bija ārsta kabinets, operāciju un pārsienamā istaba.
                    Jēkaba kazarmām pienāca gals pēc tā, kad 1919. gadā Rīgā bija bads, kā rezultātā ātrās palīdzības zirgi tika apēsti. <br>
                    Jēkaba kazarmu trīs korpusos 1940. gadā atradās poļu vidusskola un pamatskola, Statistikas birojs,
                    Aizgādniecības pārvaldes grāmatiņu nodaļa, darba apgāde un malkas tirgotava. <br>
                    Pēc kara, Jākaba Kazarmu telpas nodeva kara skolai. Līdz pat 1990. gadam, te atradās projektēšanas institūts “Kara projekts”. <br>
                    Kad 1993. gadā padomju armija atstāja kazarmu telpas, to stāvoklis bija katastrofāls. 
                    Tādēļ 1995. gadā tika uzsākta atjaunošana. 
                    Uz vienas no kazarmu sienām 2018. gadā tika uzgleznoti visu Latvijas pilsētu un novadu ģerboņi par godu Latvijas simtgadei.
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Mūsdienās kazarmās ir dažādi restorāni un bāri, kā arī kafejnīcas.
                    Kazarmas ir arī diezgan populārs tūrisma objekts Rīgā to bagātās vēstures dēļ.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="muris-varti object-details" :class="muris_varti_class">
                <h1 class="object-details-title">Vecrīgas mūris — Zviedru vārti</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Zviedru vārti</b> ir 17. gadsimta valsts nozīmes piemineklis Vecrīgā.
                    Pašā sākumā bija 8 šāda tipa aizsargmūru vārti, bet mūsdienās ir saglabājušies tikai vieni.
                    Vienīgie šobrīd pastāvošie vārti atrodas Torņa ielā 11.
                </p>
                <p class="object-details-text">
                    <b>Vecrīgas mūris</b> bija kopš 12. gadsimta ap Rīgas pilsētu veidots nocietinājumu komplekss.
                    Vecrīgas mūris tika uzcelts ar nodomu pasargāt Vecrīgu no iebrukumiem, 
                    jo šajā laikā Latvijas teritorijā tādu bija diezgan daudz.
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Pirmo reizi Zviedru vārtus sāka būvēt 1698. gadā, lai savienotu iekšpilsētu ar mūra ārpusei piebūvētajiem namiem un kazarmām.
                    Krievi ieņēma vairākus svarīgus cietokšņus un 1710. gadā pakļāva arī Rīgu - tikai mēris un bads lika zviedriem padoties.
                    Pēteris I, pats būdams karavīrs,
                    novērtēja zviedru varonību un palaida karavīrus dzīvus. Pilsētu viņi atstājuši pa Zviedru vārtiem, no kā arī radies nosaukums.
                </p>
                <p class="object-details-text">
                    Vecrīgas mūri sāka būvēt pēc bīskapa Alberta fon Bukshēvdena rīkojuma pēc Lietuviešu karagājienu uz Rīgu un kuršu uzbrukuma. 
                    Pirmo mūri uzcēla gar tagadējo Kalēju ielu. 1857.—1863. gados Rīgas nocietinājumi tika nojaukti
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>

                <p class="object-details-text">
                    Mūdienās, blakus Zviedru vārtiem atrodas restorāns "Zviedru vārti". 
                    Pats restorāns atrodas 16. gadsimta ēkā pie kuras arī tika būvēti Zviedru vārti 
                    (kādreizējā Vecrīgas mūra tornī(Jurgena tornī),jo tam vairs nebija prakstiskas nozīmes.
                    Paši Zviedru vārti mūsdienās ir populārs tūrisma objekts. 
                </p>
                <p class="object-details-text">
                    No 28 uzceltajiem torņiem, kuri bija Vecrīgas mūra daļā, vienīgais kurš ir saglabājies sākotnējā skatā ir Pulvertornis. <br>
                    Pats Rīgas mūris mūsdienās ir populārs tūrisma objekts.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="rigas-pils object-details" :class="rigas_pils_class">
                <h1 class="object-details-title">Rīgas pils</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Rīgas pils</b>, jeb Rīgas trešā ordeņpils ir viena no lielākajām viduslaiku pilīm Latvijā.
                    Pils atrodas netālu no Daugavas. 
                    Tās platība ir gandrīz 10000 m2 un mūri ir 3 metrus biezi. 
                    Aiz pils ir ļoti liels dārzs, kura kopējā platība ir 3350 m2. 
                    Vēsturiski šo pili lietoja valdnieki, kuri valdīja pār Rīgas zemēm.
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Rīgas pils celtniecība aizsākās 1330. gadā. Dēļ lielajiem kariem pils tika nopostīta,
                    un to no jauna uztaisīja ap 1515. gadu. 15. gadsimta pārbūvē pils tika papildināta ar jauniem lielgabalu torņiem. <br>
                    Līdz 1562. gadam Rīgas pils bija Livonijas ordeņa pārvaldībā un tā arī bija Livonijas mestru rezidence. 
                    Pēc Livonijas bojāejas Rīgas pilī dzīvoja poļu, zviedru un krievu patvaldoņi. <br>
                    1922. gadā Rīgas pils tika pārvaidota par Latvijas Valsts prezidenta rezidenci, 
                    savukārt padomju varas gados tajā bija iekārtota Pionieru pils.
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Mūsdienās pili lieto prezidenta vajadzībām, 
                    tā ir prezidenta rezidence. Uz Rīgas pili ekskursijā aizbraukt nav iespējams, 
                    jo tajā uzturas svarīgas personas, un to bieži apmeklē citu valstu pārstāvji. 
                    Rīgas pilī atrodas arī Latvijas Nacionālais vēstures muzejs. 
                    Uz šo muzeju bieži nevar tikt, bet tas ir dažreiz atvērts apmeklētājiem speciālos gadījumos, 
                    piemēram, Eiropas muzeju nakts ietvaros.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="tris-brali object-details" :class="tris_brali_class">
                <h1 class="object-details-title">Trīs brāļi</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Trīs brāļi</b> ir vissvecākais viduslaiku ēku komplekss Rīgā. Ir vēstīta leģenda par Trim brāļiem, ka tos uzcēla vienas dzimtas vīrieši. 
                    Nosaukums ir radījies no cita ēku kompleksa Tallinā, kuru sauc “Trīs māsas”.  <br>
                    Vecākais nams ir baltais, kurš stāv pa labi no visiem, otrs nams ir dzeltenais, un tas stāv starp vecāko un jaunāko namu. 
                    Visjaunākais nams ir zaļganais, un tas stāv pa kresi no pārējiem. 
                    Ēkas tika būvētas atbilstoši izplatītajam Ziemeļeiropas Hanzas savienības dzīvojamo ēku tipam. 
                    Vidējam namam virs ieejas ir rakstīts "Soli deo gloria!" (Lai slavēts vienīgi dievs! / Slava tikai dievam!).
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Vecākais nams tika uzcelts apmēram 1490. gadā. Vidējais nams tika uzcelts 1646. gadā. 
                    Trešais un jaunākais nams tika uzbūvēts 17.gadsimta otrā pusē.
                    1697. Gadā ēka bija maiznīca. <br>
                    Otrā pasaules karā ēkas tika sagrautas. <br>
                    Tad Trīs brāļi tika restaurēti no 1955. gada līdz 1957. Gada
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Mūsdienās Trīs brāļos atrodas Latvijas arhitektūras muzejs un Nacionālā kultūras mantojuma pārvalde. 
                    Trīs brāļos ir iespējams redzēt visādas izstādes, kuras Latvijas arhitektūras muzejs ir atklājis. 
                    Trīs brāļi arī ir populāra tūristma vieta, dēļ tās vecuma.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="rigas-doms object-details" :class="rigas_doms_class">
                <h1 class="object-details-title">Rīgas Doms</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Rīgas doms</b> ir Latvijas evanģēliski - luterāniskā arhibīskapa katedrāle, kur cilvēki, 
                    neskatoties uz būves vecumu,  joprojām var apmeklēt baznīcu. Baznīca ir 812 gadus veca un 90 metrus gara. 
                    Rīgas domā atrodas otrās lielākās ērģeles Latvijā, kas ir populārs apmeklētāju apskates objekts. 
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Rīgas doma celtniecība tika aizsākta 1211. Gada 25. jūlijā, kur svinīgā ceremonijā bīskaps Alberts lika baznīcas pirmo pamatakmeni. <br>
                    14. Gadsimta beigās un 15. Gadsimta sākumā baznīcu paplašināja, uzbūvējot rietumu šķērsjomu un sānu kapelas, 
                    paaugstinot telpas centrālo jomu, līdz ar to pārvēršot Doma baznīcu par baziliku. Tika paaugstināts arī tornis. <br>
                    Šāda Baznīca nostāvēja līdz 1547. gadam, kad iekšpilsētā izcēlās ugunsgrēks, un nodega Doma torņa smaile. 
                    To atjaunoja 1595. gadā, un arī uzstādija pirmo baznīcas gaili. 
                    1710. gadā Rīgas  aplenkumu laikā cieta baznīcas jumts, pēc tam to atjaunoja. 
                    No 1881. gada līdz 1914. gadam norisinājās lieli rekonstrukcijas darbi, kuros baznīca ieguva savu pašreizējo  veidolu. <br>
                    20. gadsimtā Padomju Savienības laikā Domā tika veikti divi ievērojami remonta darbi. 
                    No 1959. gada līdz 1962. gadam Doms tika pielāgots koncertzāles vajadzībām. <br>
                    Pēdējie remontdarbi norisinājās no 1981. gada līdz 1984. gadam, kur baznīca tika pielāgota mūsdienu vajadzībām.
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Lielākoties baznīca tiek lietota reliģiskām vajadzībām, piemēram, dievkalpojumiem, svēdienas skolām, Bībeles studijām utt. <br>
                    Baznīcā norisinās arī dažādi koncerti. Uz Rīgas Domu var doties ekskursijās, 
                    un ar gidu izstaigāt baznīcu, un par to uzzināt daudz interesantu faktu.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="melngalvju-nams object-details" :class="melngalvju_nams_class">
                <h1 class="object-details-title">Melngalvju nams</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Melngalvju nams</b> atrodas Vecrīgā pie Rātslaukuma. Nams vārdu ieguva no tā īpašniekiem “Melngalvju brālības”, 
                    kuras simbols ir melnādaina cilvēka galva. 
                    Nama priekša ir izrotāta ar visādām skulptūrām, piemēram lauvas skulptūra, Neptūna, Merkūra, Vienības un Miera skulptūras. 
                    Vēl ārpuse tiek izrotāta ar Melngalvju ģērboni un astronomisko pulksteni, un Rīgas, Brēmenes, Lībekas, Hamburgas ģērboņi.
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Nav zināms precīzi kad tika uzcelts Melngalvju nams, 
                    bet pirmo reizi rakstu avotos tas minēts 1334. gadā. 
                    Kopš 15. Gadsimta tas bija zināms kā dzīru nams, un tolaik to sauca par “Jaunais nams” vai “Karaļa Artūra sēta”. 
                    To liellākoties īrēja Lielās ģildes tirgotāji. 1710. gadā Melngalvju nams cieta no krievu karaspēka bombardēšanas. <br>
                    Tad 1713. Gadā to iegādājās Rīgas Melngalvju brālība. 1920. gadā Melngalvju namā parakstīja pamieru no Polijas un Padomju Krievijas. 
                    Otrajā pasaules karā artilēriju apšaudes rezultātā Melngalvju nams pilnīgi izdega, un pēc kara tika atzīts ka namu atjaunot nav lietderīgi. 
                    Tādēļ ka nebija lietderīgi to atjaunot, visas drupas tika uzspridzinātas un novāktas. <br>
                    Tad 1980. gadā Rīgas politehniskais institūts pamatojoties uz arhīvos saglabātajiem plāniem, izstrādāja atjaunošanas projektu. 
                    Pabeidza nama celtniecību 1999. gadā un tajā pašā gadā tika atklāts jaunais Melngalvju nams. <br>
                    Rīgas pils rekonstrukcijas laikā no 2012. gada līdz 2016. gadam, 
                    Melngalvju nams tika izmantots priekš Valsts prezidenta kancelejas vajadzībām
                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Mūsdienās Melngalvju nama telpas var iznomāt dažādiem pasākumiem, kurās var ietilpt no 20 līdz pat 700 cilvēkiem. 
                    Melngalvju nams mūdienās piedāvā ekskursijas, 
                    kurās var uzzināt par šī nama plašo vēsturi un apskatīt tā kabinetus, viduslaiku pagrabus, kā arī lielās un greznās telpas.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>

            <div class="peterbaznica object-details" :class="peterbaznica_class">
                <h1 class="object-details-title">Rīgas Sv. Pētera baznīca</h1>
                <h3 class="object-details-subtitle">Apraksts</h3>
                <p class="object-details-text">
                    <b>Rīgas Svētā Pētera katedrāle</b> ir viduslaiku baznīca, kas atrodas Rīgā, Latvijā. 
                    Tā celta 13. gadsimtā un gadsimtiem ilgi ir bijusi nozīmīga kultūrvēsturiska vieta. 
                    Virs baznīcas slejas 123 metru augsts tornis ar gaili tā spicē, ēka celta no ķieģeļiem gotikas arhitektūras stilā. 
                    Tā ir viena no senākajām ķieģeļceltnēm latvijā. 
                </p>
                <h3 class="object-details-subtitle">Vēsture</h3>
                <p class="object-details-text">
                    Katedrāle tika uzcelta 13. gadsimtā, padarot to par vienu no vecākajām celtnēm pilsētā. 
                    Gadsimtu gaitā tajā tika veikti vairāki renovācijas un paplašināšanas darbi, no kuriem nozīmīgākie ir 19. Gadsimtā. <br>
                    Otrā pasaules kara laikā katedrāle tika bojāta, bet vēlāk tika atjaunota sākotnējā formā. Sākotnējā torņa garums bija 136 metrus augsts, 
                    tas tika izmantots lai novērstu tuvojošās briesmas, vai izcēlušos ugunsgrēku. <br>
                    Baznīcas ēka darbojās kā Rīgas luterāņu dievnams kopš 16. Līdz 20. gadsimtam.  <br>
                    Pēterbaznīcas tornis ir pārbūvēts jau 4 reizes, tajā skaitā 7 reizes gailis ar lodi torņa spicē.

                </p>
                <h3 class="object-details-subtitle">Nozīme mūsdienās</h3>
                <p class="object-details-text">
                    Rīgas Svētā Pētera katedrāle ir lielisks ķieģeļu gotikas arhitektūras paraugs un lolots pilsētas apskates objekts. 
                    Tā bagātā vēsture, sarežģītās detaļas un pastāvīgā nozīme padara to par obligātu galamērķi ikvienam, 
                    kuru interesē arhitektūra, vēsture vai reliģija. Mūsdienās tornis ir atjaunots 123.25 metru augstumā ar iebūvētu liftu, 
                    kas ļauj apmeklētājiem vērsties 72 metru augstumā virs rīgas ēku jumtiem. 
                    Šobrīd baznīcas ēkā ir iespējams baudīt mākslas izstādes un koncertus, 
                    kā arī iepzīties ar orģinālo celtnes vēsturi un restaurētajiem interijiera elementiem.
                </p>
                <button v-on:click="ShownOne(-1)">Aizvērt</button>
            </div>
        </div>
        
        <div class="content">
            <div class="basic-info">
                <p>Ekskursijas maršruts tika veidots kā projekta darbs Rīgas Valsts 2. ģimnāzijas 2023.gada projektu nedēļas ietvaros</p>
                <p>Šo projektu izveidoja Rīgas Valsts 2. ģimnāzijas 8.C klases skolnieki: 
                    <b>Andris Seļāvo</b>, 
                    <b>Eduards Vugulis</b>, 
                    <b>Jānis Ozols</b>, 
                    <b>Kaspars Sikora</b>,
                    <b>Raivo Rainsons</b>,
                    <b>Rūdolfs Alainis</b>.
                </p>
                <p>
                    Maršruts ir apmēram 1.9 km garš, un kopumā sevī ieskauj 14 senās Vecrīgas ielas,
                    kurās ir  tikpat pat daudz vēstures kā kultūrvēsturiskajos pieminekļos.
                </p>
                <p>
                    Ejot mierīgā tempā maršrutu var iziet aptuveni 25 minūtēs,
                     bet ja to veic skrienot, tas aizņems apamēram no 15 minūtēm līdz 20 minūtēm
                     atkarībā no tā cik ātri skrien. 
                </p>
            </div>
            <div class="objects">
                <h1>Apskates objekti</h1>
                <ol>
                    <li class="object" id="brivibas-piemineklis">
                        <h4>Brīvības piemineklis</h4>
                        <hr>
                        <img src="@/assets/img/objects/brivibasPiemineklis.png" alt="bilde">
                        <button v-on:click="ShownOne(0)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="pulvertornis">
                        <h4>Pulvertornis</h4>
                        <hr>
                        <img src="@/assets/img/objects/pulvertornis.jpeg" alt="bilde">
                        <button v-on:click="ShownOne(1)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="jekaba-kazarmas">
                        <h4>Jēkaba kazarmas</h4>
                        <hr>
                        <img src="@/assets/img/objects/JekabaKazarmas.jpg" alt="bilde">
                        <button v-on:click="ShownOne(2)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="muris-varti">
                        <h4>Zviedru vārti</h4>
                        <hr>
                        <img src="@/assets/img/objects/ZviedruVarti.jpg" alt="bilde">
                        <h4>Vecrīgas mūris</h4>
                        <hr>
                        <img src="@/assets/img/objects/RigasMuris.jpg" alt="bilde">
                        <button v-on:click="ShownOne(3)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="rigas-pils">
                        <h4>Rīgas pils</h4>
                        <hr>
                        <img src="@/assets/img/objects/RigasPils.png" alt="bilde">
                        <button v-on:click="ShownOne(4)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="tris-brali">
                        <h4>Trīs brāļi</h4>
                        <hr>
                        <img src="@/assets/img/objects/3Brali.png" alt="bilde">
                        <button v-on:click="ShownOne(5)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="rigas-doms">
                        <h4>Rīgas doms</h4>
                        <hr>
                        <img src="@/assets/img/objects/RigasDoms.png" alt="bilde">
                        <button v-on:click="ShownOne(6)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="melngalvju-nams">
                        <h4>Melngalvu nams</h4>
                        <hr>
                        <img src="@/assets/img/objects/MelngalvuNams.png" alt="bilde">
                        <button v-on:click="ShownOne(7)">Vairāk informācijas</button>
                    </li>
                    <li class="object" id="peterbaznica">
                        <h4>Rīgas Sv. Pētera baznīca</h4>
                        <hr>
                        <img src="@/assets/img/objects/Peterbaznica.png" alt="bilde">
                        <button v-on:click="ShownOne(8)">Vairāk informācijas</button>
                    </li>
                </ol>
            </div>
        </div>
        
        
    </div>
</template>

<style scoped>
  @import '@/assets/css/about.css';
</style>