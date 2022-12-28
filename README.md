# INFRA 

<img width="974" alt="Screen Shot 2022-12-28 at 11 26 43 AM" src="https://user-images.githubusercontent.com/9214059/209757300-79ec7a66-ddcf-4d92-8b6e-9ac58b4fa37f.png">


Sandbox infrastruktur perangkat lunak MVP berbasis Linux Ubuntu dengan integrasi NodeJS, Python, Email service, Object Storage, SQL, NoSQL dan Redis.

## Persyaratan Minimum

```
OS    : Linux, MacOS, Windows (WSL)
CPU   : 2 Core
RAM   : 4 GB
DRIVE : 20 GB
Other : Sudah terinstall Docker
```

## Service yang tersedia (kustom)

| Service       | Description                           | PORT  |
| ------------- | ------------------------------------- | ----: |
| UBUNTU 22.04  | Infra Server                          | 22222 |
| PostgreSQL    | SQL database                          | 5432  |
| pgAdmin4      | Postgres Admin UI                     | 81    |
| MongoDB       | NoSQL database                        | 27017 |
| Mongo Express | MongoDB Admin UI                      | 8081  |
| Redis         | KV database                           | 6379  |
| Minio         | Minio UI, Simulate S3 object storage  | 9001  |
| Mailhog       | Mailhog UI, Simulate email inbox      | 8025  |

## Instalasi

- Calankan command berikut pada terminal 
```bash
bash <(curl -s https://raw.githubusercontent.com/mashanz/infra/main/install.sh)
```
- Masuk ke shell dengan perintah `infra shell` dan mulai development.

## Penggunaan

Jalankan `infra help` untuk detail perintah
