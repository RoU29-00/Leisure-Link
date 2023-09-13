<script setup lang="ts">

import {Ref} from "vue";

const { $httpClient } = useNuxtApp()
const router = useRouter();


const conformPassword : Ref<string> = ref();

// userCreationForm をPOST
const userCreationForm = reactive({
  name: "",
  email: "",
  password: "",
  birthday: "",
  sex: "女性",
  line: "",

});
const addUser = () => {

  console.log(conformPassword.value, userCreationForm.password, typeof (conformPassword.value), typeof (userCreationForm.password));


  if (userCreationForm.password != conformPassword.value)
  {

    const elementToToggle = document.getElementById("miss") as HTMLElement;


    if (elementToToggle) {
      // 'elementToToggle'がnullでないことを確認し、存在する場合のみ操作します
      elementToToggle.style.visibility = "visible";
    }

  }


  $httpClient.post("/sample-authenticated/user", userCreationForm).then((_)=> {
    userCreationForm.name = ""
    userCreationForm.birthday = ""
    userCreationForm.sex = ""
    userCreationForm.email = ""
    userCreationForm.line = ""
    userCreationForm.password = ""
  });
};

</script>
<template>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leisure Link アカウントを作成</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@latest/dist/css/bootstrap.min.css">
  </head>

  <body>
  <div class="container mt-5">
    <div class="text-center">
      <img src="http://drive.google.com/uc?export=view&id=1f_Y-HQsYWqoc-IRDdoqCA_NegDm2im5K" alt="logo"
           class="mb-4">
      <h1>Leisure Link アカウントを作成</h1>
    </div>
    <div>

        <div class="mb-3">
          <label for="nickname" class="form-label">ニックネームを入力してください</label>
          <input type="text" class="form-control" id="nickname" placeholder="ニックネーム" v-model="userCreationForm.name">
        </div>
        <div class="mb-3">
          <label for="birthday" class="form-label">生年月日</label>
          <input type="date" class="form-control" id="birthday" v-model="userCreationForm.birthday">
        </div>
        <div class="mb-3">
          <label for="sex" class="form-label">性別</label>
          <select class="form-select" id="sex" v-model="userCreationForm.sex">
            <option disabled>戸籍上の性別を選択してください</option>
            <option>女性</option>
            <option>男性</option>
          </select>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">メールアドレスを入力してください</label>
          <input type="email" class="form-control" id="email" placeholder="メールアドレス" v-model="userCreationForm.email">
        </div>
        <div class="mb-3">
          <label for="lineId" class="form-label">LINE IDを入力してください</label>
          <input type="text" class="form-control" id="lineId" placeholder="ID" v-model="userCreationForm.line">
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">パスワード</label>
          <input type="password" class="form-control" id="password" placeholder="パスワード" v-model="userCreationForm.password">
        </div>
        <div class="mb-3">
          <label for="confirmPassword" class="form-label">確認用パスワード</label>
          <input type="password" class="form-control" id="conformPassword" placeholder="確認" v-model="conformPassword">
        </div>
        <div id="miss" style="visibility: hidden;">
          <p>パスワードが違います。</p>
        </div>
        <button class="btn btn-primary" @click="addUser()">保存</button>

    </div>
  </div>
  </body>
</template>
