<script setup lang="ts">

const { $httpClient } = useNuxtApp()

const router = useRouter();

// reactiveをつけることでリアルタイム反映
const user = reactive({
  name: "",
  email: "",
  line: "",
});

const getUser = () => {
  //ここでgetメソッドを使うことで要求方法をGETにできる
  $httpClient.get("/sample-authenticated/user")
      .then((res) => {
        user.name = res.data.name;
        user.email = res.data.email;
        user.line = res.data.line;
      })
      .catch((_) => {
        router.push("/login");
      });
}
getUser()

const logout = () => {
  $httpClient.get("/logout");
  router.push("/");
};

</script>

<template>
  <h1 class="d-flex justify-content-center">プロフィール</h1>
  <p class="d-flex justify-content-center">Leisure Link アカウント</p>
  <div class="form-control mb-2 mr-sm-2">
    <div>ニックネーム: {{ user.name }}</div>
    <div>メール: {{ user.email }}</div>
    <div>LINE ID: {{ user.line }}</div>
  </div>
  <div><button class="btn btn-primary mb-2" @click="logout()">ログアウト</button></div>
</template>


<style>

body {
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #fff;
  background-size: cover;
  animation: backgroundAnimation 30s linear infinite;
}

@keyframes backgroundAnimation {
  0% {
    background-image: url('https://gahag.net/img/201608/03s/gahag-0112415123-1.jpg');
  }

  20% {
    background-image: url('https://www.bokenjima.jp/web/wp-content/uploads/2020/12/IMG_0525-min.jpg');
  }

  40% {
    background-image: url('https://wadaphoto.jp/images/mat00l.jpg');
  }

  60% {
    background-image: url('https://w.forfun.com/fetch/eb/ebe1d754b51bf177b4adb48bc6fdf8d7.jpeg');
  }

  80% {
    background-image: url('https://img.freepik.com/free-photo/arashiyama-in-autumn-season-along-the-river-in-kyoto-japan_335224-24.jpg?w=2000');
  }

  100% {
    background-image: url('https://pbs.twimg.com/media/CQo3HzFVEAQUZ9X?format=jpg&name=4096x4096');
  }

  100% {
    background-image: url('https://tlb-dot-com-contents-production.s3.ap-northeast-1.amazonaws.com/images/19810/original_19810.jpg');
  }
}

body::before {
  content: "";
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}

.container {
  width: 60vw;
  margin-top: 20vh;
  padding: 20px;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
  margin-bottom: 20px;
}

.btn-primary {
  width: 100%;
}



</style>