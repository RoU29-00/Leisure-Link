<script setup lang="ts">


const { $httpClient } = useNuxtApp()

const router = useRouter()

type Rooms = {
  date: string;
  explanation: string;
  leader: string;
  name: string;
  participants: number;
  roomId: string;
};
const rooms = ref<Rooms[]>([]);

//databaseとの連携

$httpClient.get("/sample/rooms")
    .then((res) => {
      rooms.value = res.data.filter((r)=>r.name == "セレフェス");
    })
    .catch((_) => {});

const inputForm = reactive({
  email: "labol@example.com",
  password: "password",
})


const info = () => {
  window.alert("参加リクエストを送信しました");
  }




</script>



<template>
  <html lang="ja">
  <head>
    <meta charset="utf-8">

  </head>
  <body>
  <div class="card">
    <div class="card-header">
      東京都
    </div>
    <div class="card-body">
      <h5 class="card-title">セレスフェス</h5>
      <p class="card-text">セレス主催のイベント一覧</p>
      <nuxt-link to="/createRecruit" class="btn btn-primary">createRecruit</nuxt-link>
      <nuxt-link to="/home" class="btn btn-primary">homeへ戻る</nuxt-link>
    </div>
  </div>



  <div class="row">
    <div class="card" style="width: 18rem;" v-for="r in rooms">
      <div class="card-body">
        <h5 class="card-title">{{ r.name }}</h5>
        <p class="card-text">日にち：{{ r.date }}</p>
        <p class="card-text">参加人数：{{ r.participants }}</p>

        <p class="card-text">
          <div v-if = "r.leader == 1">
        主催者：SUZUKI
          </div>
          <div v-if = "r.leader == 2">
            主催者：やまだフミ
          </div>
          <div v-if = "r.leader == 3">
            主催者：松本です
          </div>
          <div v-if = "r.leader == 4">
            主催者：ハリボテ太郎
          </div>
        </p>

        <p class="card-text">{{ r.explanation }}</p>
        <p class="card-text">RoomId:{{ r.roomId }}</p>
        <p class="btn btn-primary" @click="info()">参加希望をリクエスト送る</p>
      </div>
    </div>
  </div>

  </body>
  </html>
</template>

<style scoped>

.card-body {
  border-left-width: 50px;padding-right: 0px;border-right-width: 50px;border-top-width: 50px;border-bottom-width: 50px;
}

</style>
