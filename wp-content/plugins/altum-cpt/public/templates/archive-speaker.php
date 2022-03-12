<?php
/**
 * The template for displaying archive cpt posts
 *
 * @link    https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package altum
 */

get_header();
?>
    <main class="archive-main">
			<?php if ( have_posts() ) : ?>

        <header class="page-header">
					<?php
					post_type_archive_title( '<h1 class="archive-title">', '</h1>' );
					?>
        </header>
        <aside class="sidebar">
            <form class="filter">
							<?php
							echo '<div class="position-filter">';
							$position_terms = get_terms( [
									'taxonomy'   => 'position',
									'hide_empty' => true,
							] );
							if ( $position_terms ) {
								echo '<h4 class="title">' . __( 'Position', 'altum-cpt' ) . '</h4>';
								foreach ( $position_terms as $position_term ) {
									echo '<div class="item"><label for="' . $position_term->term_id . '">' . $position_term->name . '</label><input type="checkbox" name="position[]" id="' . $position_term->term_id . '" value="' . $position_term->term_id . '"></div>';
								}
								echo '</div>';
							}
							echo '<div class="country-filter">';
							$country_terms = get_terms( [
									'taxonomy'   => 'country',
									'hide_empty' => true,
							] );
							if ( $position_terms ) {
								echo '<h4 class="title">' . __( 'Country', 'altum-cpt' ) . '</h4>';
								foreach ( $country_terms as $country_term ) {
									echo '<div class="item"><label for="' . $country_term->term_id . '">' . $country_term->name . '</label><input type="checkbox" name="country[]"  id="' . $country_term->term_id . '"  value="' . $country_term->term_id . '"></div>';
								}
								echo '</div>';
							}
							?>
            </form>
        </aside>
        <div class="cards-wrapper">
            <div class="inner">
							<?php while ( have_posts() ) : the_post();

								include( plugin_dir_path( __FILE__ ) . 'article-speaker.php' );

							endwhile;

							else :

								include( plugin_dir_path( __FILE__ ) . 'content-none.php' );

							endif; ?>
            </div>
            <div class="not_found"><?php echo __( 'Speakers not found.', 'altum-cpt' ); ?></div>
					<?php
					global $wp_query;

					if ( $wp_query->max_num_pages > 1 ) {
						echo '<div class="loadmore"><div class="btn">' . __( 'Load more', 'altum-cpt' ) . '</div>';
					}
					?>
        </div>

    </main>
<?php
get_footer();