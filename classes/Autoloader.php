<?php
namespace App;

class Autoloader {

    // Charge les classes automatiquement pour qu'on puisse les récuperer dans les fichiers sans les inclure à chaque fois (require_once [nom de la classe])
    public static function register(): void
    {
        spl_autoload_register([self::class, 'autoload']);
    }

    private static function autoload($class): void
    {
        // Supprime le namespace "App\"
        $class = str_replace('App\\', '', $class);

        // Convertit les \ en / pour les systèmes UNIX
        $file = __DIR__ . '/' . $class . '.php';

        if (file_exists($file)) {
            require_once $file;
        }
    }
}
