# todoApp
### backend repository
- https://github.com/T448/todoApp_backend

### frontend repository
- https://github.com/T448/todoApp_frontend

# directory
```
.
├── docker/
│   ├── mysql/
│   ├── redis/
│   ├── redisinsight/
│   ├── spring/
│   ├── vue/
│   └── docker-compose.yml
├── .devcontainer/
│   ├── backend/
│   └── frontend/
├── todoApp_backend/
├── todoApp_frontend/
├── .gitignore
└── README.md

```

# How to build development  environment
1. 本リポジトリをcloneする。`todoApp`ディレクトリが出現する。
2. `todoApp`ディレクトリに移動し、[backend](https://github.com/T448/todoApp_backend)と[frontend](https://github.com/T448/todoApp_frontend)のレポジトリをcloneする。
3. `docker/`で`docker-compose up`
4. vscodeで`todoApp`フォルダを開く。
5. `ctrl + shift + p`でコマンドパレットを開き、`コンテナーで再度開く`→`spring`を選択する。
6. 同様に別windowでコマンドパレットを開き、`コンテナーで再度開く`→`vue`を選択する。