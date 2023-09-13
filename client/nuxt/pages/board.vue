<script>


//Postをどう書けばいいのか
//動作確認
//

const { $httpClient } = useNuxtApp()

const router = useRouter()

const inputForm = reactive({
  email: "labol@example.com",
  password: "password",
})

type EventEntity = {
  name: string;
  explanation: string;
};


type Room = {
  RoomId: Number;
  Name: String;
  Date: String;
  Participants: String;
  Leader: String;
  Explanation: String;
};

type Match = {
  RoomId: Number;
  UserId: Number;
}

const event = ref<EventEntity[]>([]);
const room = ref<Room[]>([]);

//databaseとの連携

$httpClient.get("/sample/events")
    .then((res) => {
      event.value = res.data;
    })
    .catch((_) => {});

$httpClient.get("/sample/room")
    .then((res) => {
      room.value = res.data;
    })
    .catch((_) => {});


//送信
const push = (Id) => {
  const match = ref<Match[]>([]);

  match.RoomId = Id;

  //本来はユーザIDをいれたい。。。。
  match.UserId = 1;

  $httpClient.post('/sample/events', params).then((_) => {
    console.log("完了テキスト");



  }


</script>




<template>
  <!DOCTYPE html>
  <html lang="ja">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Sample</title>
    <!-- BootstrapのCSS読み込み -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery読み込み -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- BootstrapのJS読み込み -->
    <script src="js/bootstrap.min.js"></script>
  </head>
  <!-- ここまで消す -->

  <body>
  <div class="card" style="border-left-width: 50px;padding-right: 0px;border-right-width: 50px;border-top-width: 50px;border-bottom-width: 50px;">
    <div class="card-header">
      Featured
    </div>
    <div class="card-body">
      <h5 class="card-title">Special title treatment</h5>
      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    </div>
  </div>

  <div class="row">
    <div class="col-sm-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Special title treatment</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </div>
    <!-- こっから -->
    <div class="col-sm-6" v-for="r in room">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">{{r.Name}}</h5>
          <p class="card-text">日時 : {{ r.Date }}</p>
          <p class="card-text">参加可能人数 : {{ r.Participants }}</p>
          <p class="card-text">主催者 : {{ r.Explanation }}</p>
          <button type="submit" class="btn btn-primary mb-2" @click="push(r.RoomId)">参加リクエストを送る</button>
        </div>
      </div>
    </div>
    <!-- ここまでをループ -->
  </div>
  </body>
  </html>
</template>