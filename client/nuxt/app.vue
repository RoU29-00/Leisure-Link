<template>
  <div>
    <nuxt-link to="/">Login</nuxt-link>/ <nuxt-link to="/createAccount">createAccount</nuxt-link>/
    <nuxt-link to="/mypage">MyPage</nuxt-link>/
    <nuxt-link to="/home">home</nuxt-link>/
    <nuxt-link to="/createRecruit">createRecruit</nuxt-link>/
    <nuxt-link to="/board">board</nuxt-link>
    <div class="m-5">
      <!-- <NuxtPage /> -->
      <div class="btn btn-success">Success</div>
      <div class="btn btn-danger">Danger</div>
      <div class="btn btn-warning">Warning</div>
    </div>
    <NuxtPage />
  </div>
</template>
