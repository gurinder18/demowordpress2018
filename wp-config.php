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
define('DB_NAME', 'company');

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
define('AUTH_KEY',         'ZGG#o ?HAcripEg5(UUB@(HM@r|I~if;/Xo~7@(K3TKOyqG{U@?c%<p1_l:irk{q');
define('SECURE_AUTH_KEY',  '3 L`:rK8I;uKi3nW&<AV9)}Kg31~=w1^iyn 2BYM^g7XYLK$lbTB5Qvn% dev^C?');
define('LOGGED_IN_KEY',    '0POnF((^F1PVBR-$XIrRWlo>NwCGEfM(,k0wEl[cAO&ai)5`(0o}D5x34~<_}ulT');
define('NONCE_KEY',        '@f1fHFooTx5=Ztqb}8AaEDBy,HE8;.Q{^[xR9s`/@LxgGvD>vB64hRFlSw=`$F.g');
define('AUTH_SALT',        'd_%z{fNw(i^ek9gdRxtd)h8^~`<~<Og}s9NlC(=%^X.s1/W?_`LsdnMmxs.Yy8$M');
define('SECURE_AUTH_SALT', 'qZB=EfT+i,#aP x*2JvfL?IbIlChAAaH|~!De/2tF6(EpM(fi:c:OC2MV[o5Xw6o');
define('LOGGED_IN_SALT',   'Z/@i^j:NK@^F/2q&}Ja/[x#QXtMV)l)WuL8W:FR:O&_]>HmV!m``jd,(QK?G>20f');
define('NONCE_SALT',       '>Veq{jidmBqZDF~rzDB>D$f`xx<E<<SH?fWy !,ieU/8!?`E.v]#T`Bm&p85Lfkn');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
