<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, yet powerful, providing tools needed for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of any modern web application framework, making it a breeze to get started learning the framework.

If you're not in the mood to read, [Laracasts](https://laracasts.com) contains over 1100 video tutorials on a range of topics including Laravel, modern PHP, unit testing, JavaScript, and more. Boost the skill level of yourself and your entire team by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for helping fund on-going Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell):

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[British Software Development](https://www.britishsoftware.co)**
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).


## Valeria's Instructions

##Connect BD to Laravel project
## 1. Install a local server on your computer such as MAMP or XAMPP depending on your computer's SO

## Link for XAMPP download : https://www.apachefriends.org/es/index.html
## Link for MAMP download : https://www.mamp.info/en/

## 3. Download or clone the project located on github and save it in the following route
  /Applications/MAMP/htdocs or /Applications/XAMPP/htdocs

## 4. Run MAMP or XAMPP by searching it on your installed applications and click start servers, it should open a web page running on the correspondent server.

## 5. Go to MySQL/phpMyAdmin

## 1.) Click new/ create database.
## 2.) Enter songs_bd as database name
## 3.) Click create
## 4.) Go to SQL and copy paste the script content : dataBaseScript.sql

## 2. Make sure to install composer by executing the following commands on the terminal

  ## php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" (Download the installer to the current directory)

  ## php -r "if (hash_file('SHA384', 'composer-setup.php') === ## '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer ## verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" (Verify the installer SHA-384)

  ## php composer-setup.php (Run the installer)

  ## php -r "unlink('composer-setup.php');" (Remove the installer)

  ## For more info: https://getcomposer.org/download/

## 3. Then install Laravel globally by typing the following command on the terminal

  ## composer global require "laravel/installer"

## 4. Go to the root of the project on the terminal and run the following commands:
  php artisan key:generate and then php artisan serve
  It should show something like this: Laravel development server started: <http://127.0.0.1:8000>

## 5. Go to the .env file and check the following attributes are right according to your computer's enviroment

  ## DB_CONNECTION= mysql
  ## DB_HOST= 127.0.0.1
  ## DB_PORT= 8889
  ## DB_DATABASE= songs_bd
  ## DB_USERNAME= root
  ## DB_PASSWORD= root

## 6. Also go to BeenVerifiedTest/config/database.php and again check the following attributes, should be the same as the latest explained

   'mysql' => [
      'driver' => 'mysql',
      'host' => env('DB_HOST', '127.0.0.1'),
      'port' => env('DB_PORT', '8889'),
      'database' => env('DB_DATABASE', 'songs_bd'),
      'username' => env('DB_USERNAME', 'root'),
      'password' => env('DB_PASSWORD', 'root.'),
      'unix_socket' => env('DB_SOCKET', ''),
      'charset' => 'utf8',
      'collation' => 'utf8_unicode_ci',
      'prefix' => '',
      'strict' => true,
      'engine' => null,
      ]
## 7. Open postman if you don't have it, can download it here : https://www.getpostman.com/ or you can just paste the API end points on the browser

## 8. API ENDPOINTS

## -Filter by genre, title, artist : http://127.0.0.1:8000/getFilteredSong/data (Replace data for a value)
## -Had problems with the local server
## But for the first point of extra credit:
## Laravel solution

$songs = DB::table('songs')
            ->join('genres', 'songs.genre', '=', 'genres.id')
            ->select('songs.title' , 'songs.artist', 'songs.duration', 'genres.name')
            ->whereBetween('songs.duration', [$max, $min])
            ->get();

return $songs;

Second extra credit
SQL solution

SELECT COUNT(songs.title)
FROM (songs
INNER JOIN genres ON songs.genre = genres.id)
WHERE genres.name = "Rock"

## ADDITIONAL QUESTIONS
I would have made an extra table called songs_genre since we have a many to many relationship. As attributes they will share the ids and the duration of the song.
