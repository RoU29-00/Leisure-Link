<script setup lang="ts">


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
  <!DOCTYPE html>
  <html lang="ja">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン - Leisure Link アカウント</title>
  </head>


  <div style="padding: 10px; margin-bottom: 10px; border: 1px solid #333333;">
    <form action="//data_action()" method="post">
      <p>検索したいキーワードを入力してください。</p>
      <input type="search" name="search" placeholder="キーワードを入力">
      <input type="submit" name="submit" value="検索">
    </form>
    <br>
  </div>

  <div style="padding: 10px; margin-bottom: 10px; border: 1px solid #333333;">

  </div>

  <div class="card" style="width: 18rem;" v-for="e in event">
    <div class="card-body">
      <h5 class="card-title">{{ e.name }}</h5>
      <p class="card-text">{{ e.explanation }}</p>
      <a href="" class="btn btn-primary">GO</a>
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
