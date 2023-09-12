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