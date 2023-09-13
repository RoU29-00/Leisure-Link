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
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@latest/dist/css/bootstrap.min.css">
  </head>

  <body>
  <div class="container mt-5">
    <div class="text-center">
      <img src="http://drive.google.com/uc?export=view&id=1f_Y-HQsYWqoc-IRDdoqCA_NegDm2im5K" alt="logo"
           class="mb-4">
      <h1>ログイン</h1>
      <p>お客様の Leisure Link アカウントを使用</p>
    </div>

      <div class="mb-3">
        <label for="email" class="form-label">メールアドレス</label>
        <input type="email" id="email" class="form-control" placeholder="メールアドレス" v-model="inputForm.email">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">パスワード</label>
        <input type="password" id="password" class="form-control" placeholder="パスワード入力"
               v-model="inputForm.password">
      </div>
      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="inlineFormCheck">
        <label class="form-check-label" for="inlineFormCheck">パスワードを保存</label>
      </div>
      <div class="text-center">
        <button type="submit" class="btn btn-primary" @click="login()">次へ</button>
      </div>

    <div class="text-center mt-3">
      <a href="/createAccount">アカウント作成</a>
    </div>
  </div>
  </body>

</template>
