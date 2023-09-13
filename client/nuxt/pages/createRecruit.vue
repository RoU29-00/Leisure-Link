<script setup lang="ts">

import {Ref} from "vue";

const { $httpClient } = useNuxtApp()
const router = useRouter();


const RoomCreate = reactive({
  RoomId: "",
  Name: "",
  Date: "",
  Participants: "",
  Leader: "",
  Explanation:"",

});
const RoomCreates = () => {


  $httpClient
      .post("/sample/rooms", RoomCreate)
      .then(() => {
        // リクエストが正常に終了した場合の処理
        RoomCreate.RoomId = "";
        RoomCreate.Name = "";
        RoomCreate.Date = "";
        RoomCreate.Participants = "";
        RoomCreate.Leader = "";
        RoomCreate.Explanation = "";

        window.alert("ルームを作成しました");
      })
      .catch((error) => {
        // エラーハンドリング
        console.error("エラー:", error);
        window.alert("ルームの作成に失敗しました");
      });

};

</script>

<template>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>イベント主催</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@latest/dist/css/bootstrap.min.css">
  </head>
  <body>
  <div class="container mt-5">
    <div class="text-center">
      <img src="http://drive.google.com/uc?export=view&id=1f_Y-HQsYWqoc-IRDdoqCA_NegDm2im5K" alt="logo"
           class="mb-4">
      <h1>イベント主催</h1>
    </div>
    <div class="row justify-content-center mt-5">
      <div class="col-md-6">
        <div class="mb-3">
          <label for="eventName" class="form-label">イベント名を入力してください</label>
          <input type="text" class="form-control" id="eventName" placeholder="イベント名" v-model="RoomCreate.name">
        </div>
        <div class="mb-3">
          <label for="eventDate" class="form-label">イベント開催日を入力してください</label>
          <input type="date" class="form-control" id="eventDate" v-model="RoomCreate.Date">
        </div>
        <div class="mb-3">
          <label for="eventCapacity" class="form-label">募集人数を入力してください</label>
          <div class="input-group">
            <input type="text" class="form-control" id="eventCapacity" v-model="RoomCreate.Participants">
            <span class="input-group-text">人</span>
          </div>
        </div>
        <div class="mb-3">
          <label for="eventNote" class="form-label">備考欄 (任意)</label>
          <textarea class="form-control" id="eventNote" rows="3" placeholder="イベントURL等を入力してください" v-model="RoomCreate.Explanation"></textarea>
        </div>
        <div class="text-center">
          <button class="btn btn-primary" @click="RoomCreates()">公開</button>
          <nuxt-link to="/room" class="btn btn-primary">戻る</nuxt-link>
        </div>
      </div>
    </div>
  </div>
  </body>
</template>