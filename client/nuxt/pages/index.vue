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

  $httpClient.post('/api/login', params).then((_) => {
    router.push('/home')
  })
}

</script>
<template>
  <h1 class="d-flex justify-content-center">ログイン</h1>
  <p class="d-flex justify-content-center">お客様の Leisure Link アカウントを使用</p>
  <div>
    <div>
      <input type="email" class="form-control mb-2 mr-sm-2" placeholder="メールアドレス" v-model="inputForm.email">
    </div>
    <div>
      <input type="password" class="form-control mb-2 mr-sm-2" placeholder="パスワード入力" v-model="inputForm.password">
    </div>
    <div class="form-check mb-2 mr-sm-2"><input class="form-check-input" type="checkbox" id="inlineFormCheck">
      <label class="form-check-label" for="inlineFormCheck">パスワードを保存</label>
    </div>
    <div class="position-relative">
      <button type="submit" class="btn btn-primary mb-2" @click="login()">次へ</button>
      <a href="/createAccount" class="d-flex justify-content-center">アカウント作成</a>
    </div>
  </div>
</template>