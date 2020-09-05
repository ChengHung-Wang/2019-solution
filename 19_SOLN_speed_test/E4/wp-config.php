<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '200730_speed_test');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'LaHciYu>-P.yQJyAb;2ZOox]0U-,qay>:Lr@m.M2~|%Hm(0/m5vCIfn7;fpt^l@i');
define('SECURE_AUTH_KEY',  ')M-5^=[(3so$veF]yg0vjXDg0^xGZA5pGq[?V=o_OKC/}:.%R#U?Y{C%Tv~OQeE,');
define('LOGGED_IN_KEY',    'j3UC-&X9]4*!O+Sl)A1cW~#!?p410wtvo@gs(wHNYYM/tE2VL1Qtep-F}t0X%AAB');
define('NONCE_KEY',        'c%*d@6kE}]%Z`5@ ^P84)94TT{%Yu:N(pO|;SSfm|d)`6,N}Gr;yoODGr+!R=2y0');
define('AUTH_SALT',        '*MK-j?Ptp(~N}QkP$a-gwe1&}z5e3>u@&Z~<Lm`7T81[Y)KCh l3t3g)0%,9ofAm');
define('SECURE_AUTH_SALT', ':Bd4lvI=v>u|do:/%l?sr8-][yoCZI(5EUYNSg^hQpCQ.^F3ksQm3q$h4iX-taA_');
define('LOGGED_IN_SALT',   'P6ID1rwG0;dai+UcS<wuE4K|my#&Q].PTEJN8RBF^7`vcMHx^!dY]r+>qW~_oxC)');
define('NONCE_SALT',       '!P2~v.`WQDNmO|]ag3BU7%PSidbCD]6CUb$y&#uMk+(wI1V{7Jc*s~?+)vaBP`@>');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wpse4_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
