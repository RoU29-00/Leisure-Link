<script setup lang="ts" xmlns="http://www.w3.org/1999/html">

const { $httpClient } = useNuxtApp()

const router = useRouter();

</script>

<template>
  <h1>イベント主催</h1>

  <div>
    <div><p>イベント名を入力してください</p><input type="text" placeholder="イベント名"/></div>
    <div><p>イベント開催日を入力してください</p><input type="date"/></div>
    <div><p>募集人数を入力してください</p><input type="text"/>人</div>
    <div><p>イベントURL等を入力してください (任意)</p><textarea placeholder="備考欄"></textarea></div>
  </div>
</template>