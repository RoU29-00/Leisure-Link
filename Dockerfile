# フロントエンドビルドステージ
FROM node:14 AS frontend-build
WORKDIR /app
COPY client/nuxt/package*.json ./
RUN npm install
COPY client/nuxt/ ./
RUN npm run build

# バックエンドビルドステージ
FROM amazoncorretto:17 AS backend-build
chmod +x gradlew
WORKDIR /app
RUN ./gradlew build

# 実行ステージ
FROM amazoncorretto:17-alpine
WORKDIR /app
# フロントエンドアプリケーションをコピー
COPY --from=frontend-build /app/dist/ ./client/nuxt/
# バックエンドアプリケーションをコピー
COPY --from=backend-build /app/build/libs/demo.jar ./
# Spring Bootアプリケーションのポートを設定
EXPOSE 8080
# アプリケーションを実行
CMD ["java", "-jar", "demo.jar"]
