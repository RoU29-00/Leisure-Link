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
  <div class="lost">
    <nuxt-link to="/"></nuxt-link>
    <nuxt-link to="/createAccount"></nuxt-link>
    <nuxt-link to="/home"></nuxt-link>
    <nuxt-link to="/createRecruit"></nuxt-link>
    <nuxt-link to="/room"></nuxt-link>

    <NuxtPage></NuxtPage>

  </div>
</template>
