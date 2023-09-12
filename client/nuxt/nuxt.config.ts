// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    css:["bootstrap/dist/css/bootstrap.min.css"],
  devtools: { enabled: true },
  runtimeConfig: {
    public: {
        baseApiURL: process.env.API_URL,
    },
},
})
