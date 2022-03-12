<?php
/**
 * Allow SVG through WordPress Media Uploader
 *
 * @package altum
 */

function altum_mime_types( $mimes ) {
	$mimes['svg'] = 'image/svg+xml';

	return $mimes;
}

add_filter( 'upload_mimes', 'altum_mime_types' );

function altum_fix_svg_thumb() {
	echo '<style>td.media-icon img[src$=".svg"], img[src$=".svg"].attachment-post-thumbnail {width: 100% !important;height: auto !important}</style>';
}

add_action( 'admin_head', 'altum_fix_svg_thumb' );

function altum_svgs_display_thumbs() {
	ob_start();
	add_action( 'shutdown', 'altum_svgs_thumbs_filter', 0 );
	function altum_svgs_thumbs_filter() {
		$final = '';
		if ( is_array( ob_get_level() ) || is_object( ob_get_level() ) ) {
			$ob_levels = count( ob_get_level() );
			for ( $i = 0; $i < $ob_levels; $i ++ ) {
				$final .= ob_get_clean();
			}
		}
		echo apply_filters( 'final_output', $final );
	}

	add_filter( 'final_output', 'altum_svgs_final_output' );
	function altum_svgs_final_output( $content ) {
		$content = str_replace( '<# } else if ( \'image\' === data.type && data.sizes && data.sizes.full ) { #>', '<# } else if ( \'svg+xml\' === data.subtype ) { #>
                <img class="details-image" src="{{ data.url }}" draggable="false" />
                <# } else if ( \'image\' === data.type && data.sizes && data.sizes.full ) { #>', $content );
		$content = str_replace( '<# } else if ( \'image\' === data.type && data.sizes ) { #>', '<# } else if ( \'svg+xml\' === data.subtype ) { #>
                <div class="centered">
                    <img src="{{ data.url }}" class="thumbnail" draggable="false" />
                </div>
            <# } else if ( \'image\' === data.type && data.sizes ) { #>', $content );

		return $content;
	}
}

add_action( 'admin_init', 'altum_svgs_display_thumbs' );
