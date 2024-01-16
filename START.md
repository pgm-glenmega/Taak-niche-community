# Laravel en ddev opstarten

1. Pre-install

Er zijn wat problemen met het starten via mijn aangemaakte .ddev/config.yaml. Dus gaan we deze eerst verwijderen en zelf een ddev configureren.

- verwijder de `.ddev` folder
- `ddev config`
   - let op dat:
   - je laravel kiest
   - 'public' bij de docroot
- `ddev stop --unlist laravel-community`

2. Install
   
``` bash
ddev start
ddev composer create --prefer-dist --no-install --no-scripts laravel/laravel -y
ddev composer install
npm install
```

3. [.env file aanmaken](https://www.pgm.gent/laravel/laravel/databases/connecting.html#configuratie-via-env)

Dupliceer de `.env-example` en hernoem die naar `.env`
Pas de connectiegegevens aan volgens de standaard ddev database

```
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=db
DB_USERNAME=db
DB_PASSWORD=db
```

4. Generate app key

```bash
ddev artisan key:generate
```

3. Initial DB install

``` bash
ddev artisan migrate
```

