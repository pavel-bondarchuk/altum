<?php
/**
 * Template Name: Home
 *
 * @link    https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package altum
 */

get_header(); ?>
    <main class="page-main">
      <?php
			while ( the_flexible_field('home') ) {
				get_template_part( 'components/'. get_row_layout() );
			}
      ?>
    </main>
<?php get_footer();