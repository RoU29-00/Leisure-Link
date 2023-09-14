# バックエンドビルドステージ
FROM amazoncorretto:17 AS backend-build
WORKDIR /app
COPY . .
RUN ./gradlew


# フロントエンドビルドステージ
FROM node:14 AS frontend-build
WORKDIR /app
COPY client/nuxt/package*.json ./
RUN npm install
COPY client/nuxt/ ./
RUN npm run build


# 実行ステージ
FROM amazoncorretto:17-alpine
WORKDIR /app
# フロントエンドアプリケーションをコピー

# Spring Bootアプリケーションのポートを設定
EXPOSE 8080
# アプリケーションを実行
CMD ["java", "-jar", "demo.jar"]
