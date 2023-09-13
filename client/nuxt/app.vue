<script setup lang="ts">

const { $httpClient } = useNuxtApp()

type EventEntity = {
  name: string;
  explanation: string;
  eventId: number;
};
const event = ref<EventEntity[]>([]);

//databaseとの連携

$httpClient.get("/sample/events")
    .then((res) => {
      event.value = res.data;
    })
    .catch((_) => {});

</script>



<template>
  <div>
    <nuxt-link to="/">Login</nuxt-link>
    <nuxt-link to="/createAccount">createAccount</nuxt-link>
    <nuxt-link to="/home">home</nuxt-link>
    <nuxt-link to="/createRecruit">createRecruit</nuxt-link>
    <nuxt-link to="/room">room</nuxt-link>

    <NuxtPage></NuxtPage>

  </div>
</template>