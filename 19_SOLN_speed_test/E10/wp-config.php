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
define('AUTH_KEY',         'B=. [ a58KaMq[|>`vex3ha>VElG!blf;ysL9!khA^^Rg:A~#Qk},4w=|=lG4v/S');
define('SECURE_AUTH_KEY',  'VM6nh!$7!RK}=n&[LmnYa>c&^l8O2l`dxNn/*vMS;SLY+@Ojc?br91iP7Ei395B>');
define('LOGGED_IN_KEY',    'bul4ufI.[)$P/NPBV6PcA|QAAN@0KP*-3}n/oe6l#pxh_G*+2$I?ZgZ&+,=f8mYT');
define('NONCE_KEY',        'IxeGeENf^g[=g h.o`{iX([BC}@&Y&~8Bx,NAVOdHW|+K#8 )2!@(9BB.jg1]s93');
define('AUTH_SALT',        'Ey4y/ 6>[nb_}n)r ~RCY,Y%uZl31&bS%Cq,:,r{cBQr:[6;tJ_LD#KiT-Q;:=Bh');
define('SECURE_AUTH_SALT', 'XMn^0y%uJ5R<g9aE=!I~{5{|,Y]v?VLm%bri.-i7dC1wy,@smHME)I5#t O0OS0&');
define('LOGGED_IN_SALT',   '*(~Ms0spo*vL2AkPUv{c<7Sj =k1(1CENOL<)2w[z64/1K]l`GZlQ9 og:rj,CYM');
define('NONCE_SALT',       'Be/t*eL`H#4EPxaR4 )S =HJi9G1KLu/db>O&2%+.Awj#/VPpbz`Gj{~Pz4vZO2d');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wpse10_';

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
