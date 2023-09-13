<script setup lang="ts">

const { $httpClient } = useNuxtApp()

const router = useRouter();

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
    <h1>:link:イベント主催</h1>

    <div class="row">
      <div class="col-md-6">
        <div class="mb-3">
          <label for="eventName" class="form-label">イベント名</label>
          <input type="text" class="form-control" id="eventName" placeholder="イベント名">
        </div>
      </div>
      <div class="col-md-6">
        <div class="mb-3">
          <label for="eventDate" class="form-label">イベント開催日</label>
          <input type="date" class="form-control" id="eventDate">
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6">
        <div class="mb-3">
          <label for="numberOfParticipants" class="form-label">募集人数</label>
          <div class="input-group">
            <input type="text" class="form-control" id="numberOfParticipants">
            <span class="input-group-text">人</span>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="mb-3">
          <label for="eventNotes" class="form-label">備考欄 (任意)</label>
          <textarea class="form-control" id="eventNotes" placeholder="イベントURL等を入力してください"></textarea>
        </div>
      </div>
      <div class="text-center">
        <button type="submit" class="btn btn-primary" @click="login()">更新</button>
      </div>
    </div>
  </div>
  </body>

</template>