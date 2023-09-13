<script>

const { $httpClient } = useNuxtApp()

type EventEntity = {
  name: string;
  explanation: string;
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
    <nuxt-link to="/">Login</nuxt-link>/
    <nuxt-link to="/createAccount">createAccount</nuxt-link>/
    <nuxt-link to="/home">home</nuxt-link>/
    <nuxt-link to="/createRecruit">createRecruit</nuxt-link>/
    <nuxt-link to="/board">board</nuxt-link>/

    <div v-for="e in event">
    <nuxt-link :to="'/' + /board">{{ e.eventId }}</nuxt-link>
    </div>
    <div class="m-5">
      <!-- <NuxtPage /> -->
      <div class="btn btn-success">Success</div>
      <div class="btn btn-danger">Danger</div>
      <div class="btn btn-warning">Warning</div>
    </div>
  </div>
</template>