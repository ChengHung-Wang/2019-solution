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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '200813_cms_module' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2*p/K5BUJW(T*xg)>s0FeBlL=;>G Q5WATj;cAbI17p7Ryda]?rA,@Np*vCK%~HM' );
define( 'SECURE_AUTH_KEY',  '_O,XQqaZxSD,u<6(#CD{pjV1L_}+5v7C[8,7G8$ah[[9Z.u,{S.7$Vh:(@}Uz]_2' );
define( 'LOGGED_IN_KEY',    '=9R>o?~w)Dnt~Jqf)kG8{s_Ee)B#V|mM)%NsaH|F+xu8`?R5,:bDE-spoLSfq_P>' );
define( 'NONCE_KEY',        '<J:.2o!/OqWL|;$ A`9S j&3Pa}ntEzO?jxEf>>XtSOP8hH{haj6ZFjQe.L9&WM%' );
define( 'AUTH_SALT',        '?|uSt*N1;I.BJl-8~;6aaqE-errogPY]@8jgh,~,,#[r_eKfl,4Cn:zF98rUfrQ$' );
define( 'SECURE_AUTH_SALT', 'v+DK{55IfT7u`I9*^6BwJ>2J3k?%(+8vq}8C()_tQI)[q3G^P4FUyNmBQk/9/Px}' );
define( 'LOGGED_IN_SALT',   'mYdv4UQSl#WJ~YdWPea96*nbQDXK.oZLCQ?(#E=Ny-lh+}uDn?iu4j$u$|T#p^y%' );
define( 'NONCE_SALT',       'rly;n!)+GoP{>I(90+UHv:|jbsY(-}$>2:C6ZTC;^_bA0Z8(bL[k^1yTUu<aTwDf' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */

define( 'WP_DEBUG', false );

// define( 'WP_DEBUG', true );
// define( 'SCRIPT_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
