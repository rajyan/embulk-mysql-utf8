# Repro

Reproducible repo for
https://github.com/embulk/embulk-output-jdbc/issues/306

```
docker compose up -d mysql
```

## 1. no options
```
docker compose run --rm embulk bash -c '/usr/local/bin/embulk run /config-ng1.yml'
```
Inserted data looks broken.

## 2. options: { characterEncoding: UTF-8 }
```
docker compose run --rm embulk bash -c '/usr/local/bin/embulk run /config-ng2.yml'
```

Cannot insert. `Incorrect string value: '\xF0\x9F\x8D\xBA\xF0\x9F...' for column 'comment'`

## 3. using `driver_path` mysql-connector-java-5.1.49

```
docker compose run --rm embulk bash -c '/usr/local/bin/embulk run /config-ok.yml'
```

Works!

## 4. Setting `mysqld --character-set-server=utf8mb4 --collation-server=utf8mb4_general_ci`

Works.
