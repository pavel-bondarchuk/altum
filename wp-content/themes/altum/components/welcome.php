<?php
$img      = get_sub_field( 'img' );
$title    = get_sub_field( 'title' );
$title_word = get_sub_field( 'title_word' );
$text     = get_sub_field( 'text' );
$button   = get_sub_field( 'button' );
?>
<section class="welcome">
	<div class="inner">
		<?php if ( $img ): ?>
            <img class="welcome_img" src="<?php echo $img['url']; ?>">
		<?php endif; ?>
		<div class="info">
			<?php if ( $title ): ?>
                <h3 class="title"><?php echo $title; ?> <span class="colored"><?php echo $title_word; ?> </span></h3>
			<?php endif; ?>
			<?php if ( $text ): ?>
                <div class="text"><?php echo $text; ?></div>
			<?php endif; ?>
			<?php if ( $button ): ?>
                <a href="<?php echo $button['url']; ?>" class="btn_icon">
                    <svg width="37" height="36" viewBox="0 0 37 36" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="18.5" cy="18" r="17" stroke="#202020" stroke-width="2"/>
                        <path d="M26.2279 12.0001C26.2279 11.4478 25.7802 11.0001 25.2279 11.0001L16.2279 11.0001C15.6756 11.0001 15.2279 11.4478 15.2279 12.0001C15.2279 12.5524 15.6756 13.0001 16.2279 13.0001L24.2279 13.0001L24.2279 21.0001C24.2279 21.5524 24.6756 22.0001 25.2279 22.0001C25.7802 22.0001 26.2279 21.5524 26.2279 21.0001L26.2279 12.0001ZM13.2071 25.4351L25.935 12.7072L24.5208 11.293L11.7929 24.0209L13.2071 25.4351Z" fill="#202020"/>
                    </svg>
                    <span class="btn_icon_text"><?php echo $button['title']; ?></span>
                </a>
			<?php endif; ?>
		</div>
	</div>
</section>