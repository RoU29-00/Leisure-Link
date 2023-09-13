<script setup lang="ts">

const { $httpClient } = useNuxtApp()

const router = useRouter()

const inputForm = reactive({
  email: "labol@example.com",
  password: "password",
})

const login = () => {
  const params = new URLSearchParams();
  params.append("username", inputForm.email)
  params.append("password", inputForm.password)


  fetch('http://localhost:8080/api/login', {

    credentials: 'include',
    method: "POST",
    body: params,
  }).then(res => {
if(!res.ok)
{
  return
}
    console.log(res);
    router.push('/home')
  })
}

</script>
<template>

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@latest/dist/css/bootstrap.min.css">
  </head>

  <body>
  <div class="container">
    <div class="text-center mb-4">
      <img src="http://drive.google.com/uc?export=view&id=1f_Y-HQsYWqoc-IRDdoqCA_NegDm2im5K" alt="logo" class="mb-4">
      <h1>ログイン</h1>
      <p>お客様の Leisure Link アカウントを使用</p>
    </div>
    <div class="form-group">
      <label for="email">メールアドレス</label>
      <input type="email" id="email" placeholder="メールアドレス" v-model="inputForm.email" class="form-control">
    </div>
    <div class="form-group">
      <label for="password">パスワード</label>
      <input type="password" id="password" placeholder="パスワード入力" v-model="inputForm.password" class="form-control">
    </div>
    <div class="form-group form-check">
      <input type="checkbox" id="inlineFormCheck" class="form-check-input">
      <label for="inlineFormCheck" class="form-check-label">パスワードを保存</label>
    </div>
    <div>
      <button type="submit" @click="login()" class="btn btn-primary">次へ</button>
    </div>
    <div class="mt-3">
      <a href="/createAccount">アカウント作成</a>
    </div>
  </div>
  </body>

</template>


<style scoped>

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