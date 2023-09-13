<script setup lang="ts">

const { $httpClient } = useNuxtApp()

const router = useRouter()



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

const inputForm = reactive({
  email: "labol@example.com",
  password: "password",
})

const RoomGo = () => {
    router.push('/room');
  }


</script>
<template>
  <!DOCTYPE html>
  <html lang="ja">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン - Leisure Link アカウント</title>
  </head>


  <div style="padding: 10px; margin-bottom: 10px; border: 1px solid #333333;">
    <form action="//data_action()" method="post">
      <nuxt-link to="/" class="btn btn-danger">ログアウト</nuxt-link>
      <br>
      <br>
      <p>以下の中から場所選択をしてください</p>


    </form>
    <br>
  </div>

  <div style="padding: 10px; margin-bottom: 10px; border: 1px solid #333333;">

  </div>
  <div class="row">
  <div class="card" style="width: 18rem;" v-for="e in event">
    <div class="card-body">
      <h5 class="card-title">{{ e.name }}</h5>
      <p class="card-text">{{ e.explanation }}</p>
      <nuxt-link to="/room" class="btn btn-primary">仲間を探しに行く</nuxt-link>
    </div>
    </div>
  </div>

  </html>
  </template>



<style scoped>
/* リストの黒点を非表示にするスタイル */
ul {
  list-style-type: none; /* リストマーカーを非表示にする */
}
clickable {
  cursor: pointer; /* マウスカーソルをポインターに変更してクリッカブルな要素として示す */
  padding: 10px;
  background-color: lightblue;
}



</style>
