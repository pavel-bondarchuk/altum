<?php
/**
 * The template for displaying archive card
 *
 * @link    https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package altum
 */
?>
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
