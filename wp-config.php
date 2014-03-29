<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache

/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'db431341904');

/** MySQL database username */
define('DB_USER', 'dbo431341904');

/** MySQL database password */
define('DB_PASSWORD', '4rustbuilders');

/** MySQL hostname */
define('DB_HOST', 'db431341904.db.1and1.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         ')1+#Pit3DB26A_`5(C-8MQ.!W@oc8WO^P}zVxH5aU<!JtXy%|J9w?$G9[ukw[$g-');
define('SECURE_AUTH_KEY',  '#0fxT-<+sHr-(pG%?7b5h^;R)F &xVWsG}:c@`AI<:_+>KC@d,i2n^c=Pm7gC E-');
define('LOGGED_IN_KEY',    '5TRY@f^rc79^4|Nuu*Xm^:}.5#Kt!5##+ET2m]izK4s2F5#wh*39bit;+K5+I7Pi');
define('NONCE_KEY',        '%n D?:,w/+dl|-$hQo)i&R}CFqV(CW|V4VXc&s/++-9@E?naOu`^cfi|3@>Y?Ifp');
define('AUTH_SALT',        'm-^n+[|0cAh+3,8e 7~+PS4#X=U[/B{Wxle&|y>~u(NQ;%EWuV-lW(];jE0N|Yf+');
define('SECURE_AUTH_SALT', 'cY@` iEQIct?r9mMl:JC$fx,#%zefZ(dG:`Jg;jM0ATedpiaLXPCu;!+uxiNt>rR');
define('LOGGED_IN_SALT',   'zC!VvB,&9|+H% /7p@Npi|32mb^]tg sW^J!Xz(WyEUf5-8_Yqt,hc5u5^Ui6Q22');
define('NONCE_SALT',       'z<@8/GjMnxnMfo[-k%V8Y 2]Whz}*tZW%e]|yxRCf<4_&P<S90CnUp@iSs9t`4KB');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
