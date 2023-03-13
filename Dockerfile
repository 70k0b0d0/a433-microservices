FROM node:14
#* Docker akan mengunduh/mengambil base image bernama node dari Docker Hub dengan tag 12-alpine. 
#* Bila sudah pernah diunduh sebelumnya, Docker akan mengambil dari lokal.

RUN mkdir -p /app
#* membuat directory baru bernama app di dalam container

WORKDIR /app
#* membuat directory baru bernama app di dalam container dan menjadikannya sebagai working directory.

COPY . .
#* menyalin semua file yang ada di direktori yang sama dengan Dockerfile ke dalam container working directory (yakni, /app).

ENV NODE_ENV=production DB_HOST=item-db
#* menetapkan environment variable NODE_ENV=production dan DB_HOST=item-db, agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host.

RUN npm install --production --unsafe-perm && npm run build
#* menjalankan perintah npm install --production --unsafe-perm untuk menginstall semua dependency yang dibutuhkan oleh aplikasi pada environment production dan menjalankan perintah npm run build untuk melakukan build aplikasi.

EXPOSE 8080
#* membuat container dapat diakses melalui port 8080.

CMD ["npm", "start"]
#* menjalankan perintah npm start untuk menjalankan aplikasi.
