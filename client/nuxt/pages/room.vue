<script setup lang="ts">


const { $httpClient } = useNuxtApp()

const router = useRouter()

type Rooms = {
  date: string;
  explanation: string;
  leader: string;
  name: string;
  participants: number;
  roomId: number;
};
const rooms = ref<Rooms[]>([]);

//databaseとの連携

$httpClient.get("/sample/rooms")
    .then((res) => {
      rooms.value = res.data;
    })
    .catch((_) => {});

const inputForm = reactive({
  email: "labol@example.com",
  password: "password",
})


const RoomGo = () => {
  const params = new URLSearchParams();
  params.append("username", inputForm.email)
  params.append("password", inputForm.password)
  console.log("AAA")

  fetch('http://localhost:8080/api/login', {

    credentials: 'include',
    method: "POST",
    body: params,
  }).then(res => {

    console.log(res);
    router.push('/home')
  })
}




</script>



<template>
  <html lang="ja">
  <head>
    <meta charset="utf-8">

  </head>
  <body>
  <div class="card" style="border-left-width: 50px;padding-right: 0px;border-right-width: 50px;border-top-width: 50px;border-bottom-width: 50px;">
    <div class="card-header">
      東京都
    </div>
    <div class="card-body">
      <h5 class="card-title">セレスイベント</h5>
      <p class="card-text">セレス主催のイベント一覧</p>
    </div>
  </div>



  <div class="row">
    <div class="card" style="width: 18rem;" v-for="r in rooms">
      <div class="card-body">
        <h5 class="card-title">{{ r.name }}</h5>
        <p class="card-text">日にち：{{ r.Date }}</p>
        <p class="card-text">参加人数：{{ r.participants }}</p>
        <p class="card-text">主催者：{{ r.leader }}</p>
        <p class="card-text">{{ r.explanation }}</p>
        <p class="card-text">RoomId:{{ r.roomId }}</p>
        <a href="" class="btn btn-primary">参加希望をリクエスト送る</a>
      </div>
    </div>
  </div>

  </body>
  </html>
</template>