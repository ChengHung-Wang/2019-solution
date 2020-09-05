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
define('AUTH_KEY',         'M`pwuRr0AS<4WOd@xh;,i|4+{f/|1/Tqds*Juc=]A(OWT0]2DQFPX+H!!scL;DUQ');
define('SECURE_AUTH_KEY',  '_Bc8eNyPWIB:j-ag-H}]rR^^AAv?AjCZ~|KT<M`N}}yo)yb#Uy2!wJmI3>omv@+u');
define('LOGGED_IN_KEY',    'K!woTOxjm7@P9#JjvUos;G25en7D*SbB(ITVNe[B~ZY*#0B&[!2L>`Ns5(2y,-]c');
define('NONCE_KEY',        'WznHb2/bKiVaQTzm9F/n5=yrzboVd7K]^/B-WH58|2AXU90=-cHN-2Zb-]*q%_IS');
define('AUTH_SALT',        '0s}/`?vq FE4F*=MgI:lDG475+B,Y<sdaMwlmhMwR=ptVB8Phi_ACo$H[!mBo{,r');
define('SECURE_AUTH_SALT', '_~LCQS5H^Atl;#MIj:DX&JKz%re@C_aJ{s+6e%d+~+7cZr&PW3!tZ4}xH=|@FdXS');
define('LOGGED_IN_SALT',   'Fv]Ov^Vu&A)w?V&?RlU0Vh8(3wUjPOa?}$`C?7_ocr0)4dp4$ }Di>$@IlR2EAM^');
define('NONCE_SALT',       'tA3XQ9`HhZ`#NB$~LH+BrT@VC|9aY#Ho&]S5Pz#`.h.RWvlm>F`boYHi:2P8JEa^');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wpse1_';

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
