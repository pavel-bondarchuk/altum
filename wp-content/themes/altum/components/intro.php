<?php
$img      = get_sub_field( 'img' );
$title    = get_sub_field( 'title' );
$subtitle = get_sub_field( 'subtitle' );
$date     = get_sub_field( 'date' );
$text     = get_sub_field( 'text' );
$button   = get_sub_field( 'button' );
?>
<section class="intro" style="background-image: url('<?php echo $img['url']; ?>');">
    <div class="inner">
			<?php if ( $subtitle ): ?>
          <h2 class="subtitle"><?php echo $subtitle; ?> <span class="colored"><?php echo $date; ?></span></h2>
			<?php endif; ?>
			<?php if ( $title ): ?>
          <h1 class="title"><?php echo $title; ?></h1>
			<?php endif; ?>
			<?php if ( $text ): ?>
          <h4 class="text"><?php echo $text; ?></h4>
			<?php endif; ?>
			<?php if ( $button ): ?>
          <a href="<?php echo $button['url']; ?>"
             class="btn" <?php echo $button['target'] ? 'target="_blank"' : '' ?>><?php echo $button['title']; ?></a>
			<?php endif; ?>
    </div>
</section>