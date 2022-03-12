<?php

/**
 * The public-facing functionality of the plugin.
 *
 * @link       https://bonddesign.com.ua
 * @since      1.0.0
 *
 * @package    Altum_Cpt
 * @subpackage Altum_Cpt/public
 */

/**
 * The public-facing functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the public-facing stylesheet and JavaScript.
 *
 * @package    Altum_Cpt
 * @subpackage Altum_Cpt/public
 * @author     bonddesign <bonddesign85@gmail.com>
 */
class Altum_Cpt_Public {

	/**
	 * The ID of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string $plugin_name The ID of this plugin.
	 */
	private $plugin_name;

	/**
	 * The version of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string $version The current version of this plugin.
	 */
	private $version;

	/**
	 * Initialize the class and set its properties.
	 *
	 * @param string $plugin_name The name of the plugin.
	 * @param string $version     The version of this plugin.
	 *
	 * @since    1.0.0
	 */
	public function __construct( $plugin_name, $version ) {

		$this->plugin_name = $plugin_name;
		$this->version     = $version;

	}

	/**
	 * Register the stylesheets for the public-facing side of the site.
	 *
	 * @since    1.0.0
	 */
	public function enqueue_styles() {

		/**
		 * This function is provided for demonstration purposes only.
		 *
		 * An instance of this class should be passed to the run() function
		 * defined in Altum_Cpt_Loader as all of the hooks are defined
		 * in that particular class.
		 *
		 * The Altum_Cpt_Loader will then create the relationship
		 * between the defined hooks and the functions defined in this
		 * class.
		 */

		wp_enqueue_style( $this->plugin_name, plugin_dir_url( __FILE__ ) . 'css/altum-cpt-public.css', array(), $this->version, 'all' );

	}

	/**
	 * Register the JavaScript for the public-facing side of the site.
	 *
	 * @since    1.0.0
	 */
	public function enqueue_scripts() {

		/**
		 * This function is provided for demonstration purposes only.
		 *
		 * An instance of this class should be passed to the run() function
		 * defined in Altum_Cpt_Loader as all of the hooks are defined
		 * in that particular class.
		 *
		 * The Altum_Cpt_Loader will then create the relationship
		 * between the defined hooks and the functions defined in this
		 * class.
		 */
		global $wp_query;
		wp_enqueue_script( $this->plugin_name, plugin_dir_url( __FILE__ ) . 'js/altum-cpt-public.js', array( 'jquery' ), $this->version, false );
		wp_localize_script( $this->plugin_name, 'loadmore_params', array(
				'ajaxurl'      => site_url() . '/wp-admin/admin-ajax.php',
				'posts'        => json_encode( $wp_query->query_vars ),
				'current_page' => $wp_query->query_vars['paged'] ? $wp_query->query_vars['paged'] : 1,
				'max_page'     => $wp_query->max_num_pages
		) );

	}

	/**
	 * Adds a default single view template for a single cpt template
	 *
	 * @param string $template The name of the template
	 *
	 * @return  mixed            The single template
	 */
	public function single_template( $template ) {

		global $post;

		$return = $template;

		if ( $post->post_type == 'speaker' ) {

			$return = altum_cpt_get_template( 'single-speaker' );

		}

		return $return;

	} // single_cpt_template()

	/**
	 * Adds a default archive view template for a archive cpt template
	 *
	 * @param string $template The name of the template
	 *
	 * @return  mixed            The single template
	 */
	public function archive_template( $template ) {

		global $post;

		$return = $template;

		if ( $post->post_type == 'speaker' ) {

			$return = altum_cpt_get_template( 'archive-speaker' );

		}

		return $return;

	} // single_cpt_template()

	/**
	 * @param $query
	 *
	 * @return void
	 */
	public function archive_pre_get_posts( $query ) {

		if ( is_admin() ) {
			return;
		}

		if ( $query->is_post_type_archive( 'speaker' ) && $query->is_main_query() ) {

			$query->set( 'posts_per_page', 20 );
			$query->set( 'orderby', 'title' );
			$query->set( 'order', 'ASC' );
			$query->set( 'post_type', 'speaker' );

		}

	}

	/**
	 * @return void
	 */
	public function ajax_loadmore_speakers() {

		$params                = json_decode( stripslashes( $_POST['query'] ), true );
		$params['paged']       = $_POST['page'] + 1;
		$params['post_status'] = 'publish';

		query_posts( $params );

		if ( have_posts() ) :

			while ( have_posts() ): the_post(); ?>

          <article id="<?php echo $post->ID ?>">
              <a href="<?php echo get_permalink(); ?>">
								<?php
								if ( has_post_thumbnail() ) {
									echo '<div class="img_placeholder">' . get_the_post_thumbnail() . '</div>';
								} else {
									echo '<div class="img_placeholder"></div>';
								}
								?>
                  <h3 class="title"><?php the_title(); ?></h3>
								<?php
								$terms = get_the_terms( $post->ID, 'country' );
								foreach ( $terms as $term ) {
									echo '<span class="country">' . $term->name . '</span>';
								}
								?>
              </a>
          </article>

			<?php
			endwhile;
			wp_reset_query();
		endif;
		die;
	}

	/**
	 * @return void
	 */
	public function ajax_tax() {

		$args['tax_query'] = array();

		if ( isset( $_POST['positions'] ) && !empty( $_POST['positions'] ) ) {
			$args['tax_query'][] = array(
					'taxonomy' => 'position',
					'field'    => 'id',
					'terms'    => $_POST['positions'],
					'operator' => 'IN'
			);
		}

		if ( isset( $_POST['countries'] ) && !empty( $_POST['countries'] ) ) {
			$args['tax_query'][] = array(
					'taxonomy' => 'country',
					'field'    => 'id',
					'terms'    => $_POST['countries'],
					'operator' => 'IN'

			);
		}

		if ( empty( $_POST['positions'] ) && empty( $_POST['countries'] ) ) {
			$args = array(
					'post_type' => 'speaker'
			);
		}

		$query = new WP_Query( $args );

		if ( $query->have_posts() ) :

			while ( $query->have_posts() ): $query->the_post(); ?>

          <article id="<?php echo $post->ID ?>">
              <a href="<?php echo get_permalink(); ?>">
								<?php
								if ( has_post_thumbnail() ) {
									echo '<div class="img_placeholder">' . get_the_post_thumbnail() . '</div>';
								} else {
									echo '<div class="img_placeholder"></div>';
								}
								?>
                  <h3 class="title"><?php the_title(); ?></h3>
								<?php
								$terms = get_the_terms( $post->ID, 'country' );
								foreach ( $terms as $term ) {
									echo '<span class="country">' . $term->name . '</span>';
								}
								?>
              </a>
          </article>

			<?php
			endwhile;
			wp_reset_postdata();
		endif;
		die;
	}

}
