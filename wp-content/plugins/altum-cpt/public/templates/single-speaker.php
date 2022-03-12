<?php
/**
 * The template for displaying all single speaker cpt posts
 *
 * @link    https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package altum
 */

get_header();
$sessions = get_field( 'sessions' );
?>
    <main class="post-main">
        <div class="back">
            <a href="<?php echo get_post_type_archive_link('speaker');?>">
                <svg width="31" height="8" viewBox="0 0 31 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0.646447 3.64645C0.451184 3.84171 0.451184 4.15829 0.646447 4.35355L3.82843 7.53553C4.02369 7.7308 4.34027 7.7308 4.53553 7.53553C4.7308 7.34027 4.7308 7.02369 4.53553 6.82843L1.70711 4L4.53553 1.17157C4.7308 0.976311 4.7308 0.659728 4.53553 0.464466C4.34027 0.269204 4.02369 0.269204 3.82843 0.464466L0.646447 3.64645ZM31 3.5H1V4.5H31V3.5Z"
                          fill="#505050"/>
                </svg>
                <?php echo __('All speakers','altum-cpt');?></a>
        </div>
        <div class="content-wrapper">
					<?php
					while ( have_posts() ) : the_post(); ?>
						<div class="info">
                            <h1 class="title"><?php the_title();?></h1>
                            <div class="content"><?php the_content();?></div>
                        </div>
						<?php the_post_thumbnail();?>
					<?php endwhile; ?>
        </div>
        <?php if($session):?>
        <div class="sessions">
            <h3 class="session-title"><?php _e('Sessions','altum-cpt');?></h3>
            <ul class="session-list">
                <?php foreach ($sessions as $session):?>
                    <li><a href="<?php echo get_permalink($session->ID);?>"><?php echo get_the_title($session->ID);?></a></li>
                <?php endforeach;?>
            </ul>
        </div>
        <?php endif;?>
        <div class="contact">
            <h3 class="contact-title"><?php _e('Do you have any <span class="colored">questions?</span>','altum-cpt');?></h3>
            <a href="" class="btn_icon">
                <svg width="37" height="36" viewBox="0 0 37 36" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="18.5" cy="18" r="17" stroke="#202020" stroke-width="2"></circle>
                    <path d="M26.2279 12.0001C26.2279 11.4478 25.7802 11.0001 25.2279 11.0001L16.2279 11.0001C15.6756 11.0001 15.2279 11.4478 15.2279 12.0001C15.2279 12.5524 15.6756 13.0001 16.2279 13.0001L24.2279 13.0001L24.2279 21.0001C24.2279 21.5524 24.6756 22.0001 25.2279 22.0001C25.7802 22.0001 26.2279 21.5524 26.2279 21.0001L26.2279 12.0001ZM13.2071 25.4351L25.935 12.7072L24.5208 11.293L11.7929 24.0209L13.2071 25.4351Z" fill="#202020"></path>
                </svg>
                <span class="btn_icon_text"><?php _e('Contact us','altum-cpt');?></span>
            </a>
        </div>
    </main>
<?php
get_footer();
