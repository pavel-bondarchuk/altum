<?php

/**
 * Define the internationalization functionality
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @link       https://bonddesign.com.ua
 * @since      1.0.0
 *
 * @package    Altum_Cpt
 * @subpackage Altum_Cpt/includes
 */

/**
 * Define the internationalization functionality.
 *
 * Loads and defines the internationalization files for this plugin
 * so that it is ready for translation.
 *
 * @since      1.0.0
 * @package    Altum_Cpt
 * @subpackage Altum_Cpt/includes
 * @author     bonddesign <bonddesign85@gmail.com>
 */
class Altum_Cpt_i18n {


	/**
	 * Load the plugin text domain for translation.
	 *
	 * @since    1.0.0
	 */
	public function load_plugin_textdomain() {

		load_plugin_textdomain(
			'altum-cpt',
			false,
			dirname( dirname( plugin_basename( __FILE__ ) ) ) . '/languages/'
		);

	}



}
