# INFRA 

Sandbox infrastruktur perangkat lunak MVP berbasis Linux Ubuntu dengan integrasi NodeJS, Python, Email service, Object Storage, SQL, NoSQL dan Redis.

## Persyaratan Minimum
```
OS    : Linux, MacOS, Windows
CPU   : 2 Core
RAM   : 4 GB
DRIVE : 20 GB
Other : Sudah terinstall Docker
```

## Service yang tersedia (kustom)
| Service | Description | PORT |
| - | - | -: |
| UBUNTU 22.04 | Infra Server | 22222 |
| PostgreSQL | SQL database | 5432 |
| pgAdmin4 | Postgres Admin UI | 81 |
| MongoDB | for no SQL database | 27017 |
| Mongo Express | MongoDB Admin UI | 8081 |
| Redis | for KV database | 6379 |
| Minio | Minio UI, Simulate S3 object storage | 9001 |
| Mailhog | Mailhog UI, Simulate email inbox | 8025

## Instalasi
- Clone repository ini
- Jalankan instalasi `install.sh`
- Masuk ke shell dengan perintah `infra shell` dan mulai development

## Penggunaan
Jalankan `infra help` untuk detail perintah
