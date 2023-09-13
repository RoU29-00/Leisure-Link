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
  sex: "",
  line: "",

});
const addUser = () => {

  if(userCreationForm.password != conformPassword.value)
  {
    const elementToToggle = document.getElementById("miss") as HTMLElement;

    if (elementToToggle.hidden) {
      elementToToggle.hidden = false;
    } else {
      elementToToggle.hidden = true;
    }
    return
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
  <div>
    <h1>Leisure Link アカウントを作成</h1>
    <div>
      <div><p>ニックネームを入力してください</p><input type="text" placeholder="ニックネーム" v-model="userCreationForm.name"/></div>
      <div><p>生年月日と性別を入力してください</p><input type="date" v-model="userCreationForm.birthday"/><select v-model="userCreationForm.sex"><option>女性</option><option>男性</option></select></div>
      <div><p>メールアドレスを入力してください</p><input type="email" placeholder="メールアドレス" v-model="userCreationForm.email"/></div>
      <div><p>LINE IDを入力してください</p><input type="text" placeholder="ID" v-model="userCreationForm.line"/></div>
      <div><p>半角アルファベット、数字、記号を組み合わせてパスワードを作成します</p><input type="password" placeholder="パスワード" v-model="userCreationForm.password"/><input type="password" placeholder="確認" v-model="conformPassword"/></div>
      <div class="miss" style="visibility: hidden;">
        <p>パスワードが違います。</p>
      </div>
      <button @click="addUser()">保存</button>
    </div>
  </div>
</template>
