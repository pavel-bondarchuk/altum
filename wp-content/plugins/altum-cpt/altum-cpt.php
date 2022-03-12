<?php

/**
 * The plugin bootstrap file
 *
 * This file is read by WordPress to generate the plugin information in the plugin
 * admin area. This file also includes all of the dependencies used by the plugin,
 * registers the activation and deactivation functions, and defines a function
 * that starts the plugin.
 *
 * @link              https://bonddesign.com.ua
 * @since             1.0.0
 * @package           Altum_Cpt
 *
 * @wordpress-plugin
 * Plugin Name:       altum-cpt
 * Plugin URI:        altum-cpt
 * Description:       This is a short description of what the plugin does. It's displayed in the WordPress admin area.
 * Version:           1.0.0
 * Author:            bonddesign
 * Author URI:        https://bonddesign.com.ua
 * License:           GPL-2.0+
 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
 * Text Domain:       altum-cpt
 * Domain Path:       /languages
 */

// If this file is called directly, abort.
if ( ! defined( 'WPINC' ) ) {
	die;
}

/**
 * Currently plugin version.
 * Start at version 1.0.0 and use SemVer - https://semver.org
 * Rename this for your plugin and update it as you release new versions.
 */
define( 'ALTUM_CPT_VERSION', '1.0.0' );

/**
 * The code that runs during plugin activation.
 * This action is documented in includes/class-altum-cpt-activator.php
 */
function activate_altum_cpt() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-altum-cpt-activator.php';
	Altum_Cpt_Activator::activate();
}

/**
 * The code that runs during plugin deactivation.
 * This action is documented in includes/class-altum-cpt-deactivator.php
 */
function deactivate_altum_cpt() {
	require_once plugin_dir_path( __FILE__ ) . 'includes/class-altum-cpt-deactivator.php';
	Altum_Cpt_Deactivator::deactivate();
}

register_activation_hook( __FILE__, 'activate_altum_cpt' );
register_deactivation_hook( __FILE__, 'deactivate_altum_cpt' );

/**
 * The core plugin class that is used to define internationalization,
 * admin-specific hooks, and public-facing site hooks.
 */
require plugin_dir_path( __FILE__ ) . 'includes/class-altum-cpt.php';

/**
 * Begins execution of the plugin.
 *
 * Since everything within the plugin is registered via hooks,
 * then kicking off the plugin from this point in the file does
 * not affect the page life cycle.
 *
 * @since    1.0.0
 */
function run_altum_cpt() {

	$plugin = new Altum_Cpt();
	$plugin->run();

}
run_altum_cpt();
