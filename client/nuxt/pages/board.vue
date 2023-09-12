<script setup lang="ts">

const { $httpClient } = useNuxtApp()

const router = useRouter();

</script>

<template>
  <h1>掲示板</h1>

  <div>
    <div><a href="/host"><img src="https://cdn.sotoasobi.net/small_light(progressive=y,q=85,e=gd,jpeghint=y,dw=334,dh=250)/dat/images/leisures/56ea2de7-771b-4a97-881b-a91dd8c2b9a1.jpg"/></a><br><input type="radio" name="date">2023/10/11(水)14:00~18:00<br><input type="radio" name="date">2023/10/12(木)14:00~18:00<br><input type="radio" name="date">2023/10/13(金)14:00~18:00</div>
    <div><a href="/host"><img src="https://cdn.sotoasobi.net/small_light(progressive=y,q=85,e=gd,jpeghint=y,dw=334,dh=250)/dat/images/leisures/fe850ae9-457a-46b6-a53f-443f2721e8ff.jpg"/></a><br><input type="radio" name="date">2023/10/11(水)14:00~18:00<br><input type="radio" name="date">2023/10/12(木)14:00~18:00<br><input type="radio" name="date">2023/10/13(金)14:00~18:00</div>
    <div><a href="/host"><img src="https://cdn.sotoasobi.net/small_light(progressive=y,q=85,e=gd,jpeghint=y,dw=334,dh=250)/dat/images/leisures/8c4e6f42-1513-4575-8be5-ab68b9b6fca9.jpg"/></a><br><input type="radio" name="date">2023/10/11(水)14:00~18:00<br><input type="radio" name="date">2023/10/12(木)14:00~18:00<br><input type="radio" name="date">2023/10/13(金)14:00~18:00</div>
    <div><a href="/host"><img src="https://cdn.sotoasobi.net/small_light(progressive=y,q=85,e=gd,jpeghint=y,dw=334,dh=250)/dat/images/leisures/5720b158-9354-46f2-82fb-68bb724481b7.jpg"/></a><br><input type="radio" name="date">2023/10/11(水)14:00~18:00<br><input type="radio" name="date">2023/10/12(木)14:00~18:00<br><input type="radio" name="date">2023/10/13(金)14:00~18:00</div>
    <div><a href="/host"><img src="https://cdn.sotoasobi.net/small_light(progressive=y,q=85,e=gd,jpeghint=y,dw=334,dh=250)/dat/images/leisures/63f3112e-03cb-47dc-bca9-9f653fd034c9.jpg"/></a><br><input type="radio" name="date">2023/10/11(水)14:00~18:00<br><input type="radio" name="date">2023/10/12(木)14:00~18:00<br><input type="radio" name="date">2023/10/13(金)14:00~18:00</div>
  </div>
</template>