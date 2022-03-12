<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package altum
 */

?>

	<footer class="footer">
        <div class="inner">
            <div class="top">
                <div class="logo">
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>">
											<?php
											$custom_logo_id = get_theme_mod( 'custom_logo' );
											$logo           = wp_get_attachment_image_src( $custom_logo_id, 'full' );

											if ( has_custom_logo() ) {
												echo '<img src="' . esc_url( $logo[0] ) . '" alt="' . get_bloginfo( 'name' ) . '">';
											} else {
												echo '<h1>' . get_bloginfo( 'name' ) . '</h1>';
											}
											?>
                    </a>
                </div>
							<?php
							wp_nav_menu(
									array(
											'menu_id'         => 'primary-menu',
											'container'       => 'nav',
											'container_class' => 'links',
											'container_id'    => '',
											'menu_class'      => '',
											'menu_id'         => false,
											'echo'            => true,
											'fallback_cb'     => 'wp_page_menu',
											'before'          => '',
											'after'           => '',
											'link_before'     => '',
											'link_after'      => '',
											'items_wrap'      => '%3$s',
											'depth'           => 1,
											'walker'          => new Custom_Walker_Nav_Menu()
									)
							);
							?>
                <a href="" class="btn_icon">
                    <svg width="37" height="36" viewBox="0 0 37 36" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="18.5" cy="18" r="17" stroke="#202020" stroke-width="2"/>
                        <path d="M26.2279 12.0001C26.2279 11.4478 25.7802 11.0001 25.2279 11.0001L16.2279 11.0001C15.6756 11.0001 15.2279 11.4478 15.2279 12.0001C15.2279 12.5524 15.6756 13.0001 16.2279 13.0001L24.2279 13.0001L24.2279 21.0001C24.2279 21.5524 24.6756 22.0001 25.2279 22.0001C25.7802 22.0001 26.2279 21.5524 26.2279 21.0001L26.2279 12.0001ZM13.2071 25.4351L25.935 12.7072L24.5208 11.293L11.7929 24.0209L13.2071 25.4351Z" fill="#202020"/>
                    </svg>
                    <span class="btn_icon_text">register</span>
                </a>
            </div>
            <div class="bottom">
                <div class="inner">
                    <svg width="166" height="30" viewBox="0 0 166 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6.76907 20.7361H0.0351562V5.41553H5.98523C7.01847 5.41553 7.9092 5.52241 8.65742 5.77182C9.40563 6.02122 9.97569 6.34189 10.3676 6.76944C11.0446 7.55328 11.4009 8.44401 11.4009 9.44162C11.4009 10.653 11.0089 11.5437 10.2251 12.1138C9.97569 12.3276 9.76192 12.4345 9.69066 12.5057C9.58377 12.5414 9.40563 12.6482 9.15622 12.7551C10.1182 12.9689 10.8664 13.3965 11.4365 14.0378C12.0066 14.6791 12.2916 15.4986 12.2916 16.4606C12.2916 17.5294 11.9353 18.4558 11.1871 19.2753C10.332 20.2729 8.87119 20.7361 6.76907 20.7361ZM3.45556 11.615H5.0945C6.05649 11.615 6.73344 11.5081 7.19662 11.2943C7.6598 11.0806 7.87357 10.653 7.87357 9.97606C7.87357 9.29911 7.6598 8.83593 7.23225 8.62215C6.8047 8.40838 6.09212 8.30149 5.0945 8.30149H3.45556V11.615ZM3.45556 17.8501H5.80708C6.8047 17.8501 7.51728 17.7432 8.01609 17.4938C8.5149 17.2444 8.7643 16.7812 8.7643 16.0686C8.7643 15.3561 8.5149 14.8929 7.98046 14.6791C7.44602 14.4653 6.62655 14.3228 5.48642 14.3228H3.45556V17.8501Z" fill="#054B80"/>
                        <path d="M20.8472 20.7361H14.1133V5.41553H20.099C21.1322 5.41553 22.023 5.52241 22.7712 5.77182C23.5194 6.02122 24.0894 6.34189 24.4814 6.76944C25.1583 7.55328 25.5146 8.44401 25.5146 9.44162C25.5146 10.653 25.1227 11.5437 24.3389 12.1138C24.0894 12.3276 23.8757 12.4345 23.8044 12.5057C23.6975 12.5414 23.5194 12.6482 23.27 12.7551C24.232 12.9689 24.9802 13.3965 25.5502 14.0378C26.1203 14.6791 26.4053 15.4986 26.4053 16.4606C26.4053 17.5294 26.0491 18.4558 25.3008 19.2753C24.4101 20.2729 22.9493 20.7361 20.8472 20.7361ZM17.5693 11.615H19.2083C20.1702 11.615 20.8472 11.5081 21.3104 11.2943C21.7736 11.0806 21.9873 10.653 21.9873 9.97606C21.9873 9.29911 21.7736 8.83593 21.346 8.62215C20.9185 8.40838 20.2059 8.30149 19.2083 8.30149H17.5693V11.615ZM17.5693 17.8501H19.9208C20.8828 17.8501 21.631 17.7432 22.1298 17.4938C22.6287 17.2444 22.8781 16.7812 22.8781 16.0686C22.8781 15.3561 22.6287 14.8929 22.0942 14.6791C21.5598 14.4653 20.7403 14.3228 19.6002 14.3228H17.5693V17.8501Z" fill="#054B80"/>
                        <path d="M33.244 8.05241C32.6739 8.05241 32.2107 8.19492 31.8901 8.44433C31.5694 8.72936 31.3913 9.08565 31.3913 9.5132C31.3913 9.97638 31.605 10.297 31.997 10.5821C32.3889 10.8315 33.3152 11.1521 34.776 11.5084C36.2368 11.8647 37.377 12.3992 38.1608 13.1117C38.9803 13.8243 39.3722 14.8576 39.3722 16.2471C39.3722 17.6367 38.8734 18.7412 37.8401 19.5963C36.8069 20.4514 35.453 20.8789 33.7784 20.8789C31.3556 20.8789 29.1466 19.9882 27.2227 18.1711L29.2535 15.677C30.8925 17.1378 32.4245 17.8504 33.8497 17.8504C34.491 17.8504 34.9898 17.7079 35.3461 17.4585C35.7024 17.1735 35.8805 16.8172 35.8805 16.354C35.8805 15.8908 35.7024 15.5345 35.3105 15.2495C34.9186 14.9645 34.1703 14.7151 33.0658 14.43C31.2844 14.0025 29.9661 13.468 29.1466 12.7911C28.3272 12.1141 27.8996 11.0453 27.8996 9.58446C27.8996 8.12366 28.434 7.01916 29.4673 6.19969C30.5005 5.41585 31.8188 5.02393 33.3865 5.02393C34.4197 5.02393 35.4174 5.20207 36.4506 5.55836C37.4839 5.91466 38.3746 6.41346 39.1228 7.05479L37.377 9.54883C36.0231 8.58684 34.6692 8.05241 33.244 8.05241Z" fill="#054B80"/>
                        <path d="M53.3711 17.7079C55.0457 17.7079 56.4352 17.031 57.5041 15.7127L59.7131 17.9573C57.9672 19.9169 55.9364 20.9145 53.5492 20.9145C51.1977 20.9145 49.2381 20.1663 47.706 18.6699C46.174 17.1735 45.4258 15.2851 45.4258 13.0049C45.4258 10.7246 46.2096 8.83625 47.7773 7.30419C49.345 5.77214 51.2333 5.02393 53.478 5.02393C56.0076 5.02393 58.1098 5.98591 59.7843 7.90989L57.6466 10.3327C56.5777 8.97876 55.2238 8.30181 53.6205 8.30181C52.3378 8.30181 51.2333 8.72936 50.307 9.54883C49.3806 10.4039 48.9531 11.5084 48.9531 12.9336C48.9531 14.3588 49.3806 15.4989 50.2357 16.354C51.0908 17.2804 52.1241 17.7079 53.3711 17.7079Z" fill="#4B494A"/>
                        <path d="M73.183 13.0049C73.183 12.4704 73.1118 12.0073 73.0049 11.5441C73.7175 10.5108 74.5013 9.51322 75.3208 8.47997C76.2115 9.76262 76.6747 11.259 76.6747 12.9692C76.6747 15.2139 75.8909 17.1022 74.3588 18.6343C72.7911 20.1307 70.9028 20.9146 68.6225 20.9146C66.3422 20.9146 64.4539 20.1663 62.8862 18.6343C61.3185 17.1379 60.5703 15.2495 60.5703 12.9692C60.5703 12.1854 60.6772 11.4016 60.8553 10.7246C61.9242 11.259 62.9931 11.9716 64.062 12.8624V13.0049C64.062 14.3588 64.4895 15.5345 65.3802 16.4965C66.271 17.4585 67.3399 17.9217 68.6225 17.9217C68.6938 17.9217 68.765 17.9217 68.8363 17.9217H69.05C70.1546 17.8148 71.0809 17.3516 71.8648 16.4965C72.7199 15.5345 73.183 14.3588 73.183 13.0049ZM70.7246 8.58686C71.4016 7.87427 72.1498 7.09043 73.0049 6.27096C71.7222 5.45149 70.2614 5.05957 68.6225 5.05957C66.7698 5.05957 65.1308 5.55838 63.7769 6.59162C64.5964 7.16169 65.4515 7.87427 66.3422 8.69375C67.0192 8.2662 67.803 8.05242 68.6581 8.05242C69.4063 8.05242 70.1189 8.23057 70.7246 8.58686Z" fill="#4B494A"/>
                        <path d="M89.6423 5.41553H93.0984V20.7361H89.6423L82.3384 11.1518V20.7361H78.918V5.41553H82.1246L89.6423 15.2848V5.41553Z" fill="#4B494A"/>
                        <path d="M105.889 12.9336H109.345V18.3849C107.813 20.0951 105.711 20.9145 103.039 20.9145C100.794 20.9145 98.9061 20.1663 97.374 18.6699C95.842 17.1735 95.0938 15.2851 95.0938 13.0049C95.0938 10.7246 95.8776 8.83625 97.4453 7.30419C99.013 5.77214 100.866 5.02393 103.075 5.02393C105.284 5.02393 107.172 5.73651 108.811 7.19731L107.03 9.76261C106.353 9.15691 105.711 8.76499 105.141 8.51558C104.571 8.30181 103.93 8.15929 103.253 8.15929C101.935 8.15929 100.866 8.58684 99.975 9.47757C99.0842 10.3683 98.621 11.5441 98.621 12.9692C98.621 14.3944 99.0486 15.5702 99.9037 16.4609C100.759 17.316 101.792 17.7792 102.968 17.7792C104.144 17.7792 105.141 17.5654 105.925 17.1022V12.9336H105.889Z" fill="#4B494A"/>
                        <path d="M124.201 10.5105C124.201 12.9689 123.239 14.5366 121.279 15.2848L125.163 20.7717H120.923L117.538 15.8905H115.151V20.7717H111.73V5.45117H117.538C119.925 5.45117 121.635 5.84309 122.633 6.66256C123.666 7.41078 124.201 8.72906 124.201 10.5105ZM117.681 12.8977C118.856 12.8977 119.64 12.7195 120.068 12.3276C120.495 11.9357 120.709 11.33 120.709 10.5105C120.709 9.69104 120.495 9.12098 120.068 8.80031C119.64 8.47965 118.856 8.33713 117.752 8.33713H115.186V12.862H117.681V12.8977Z" fill="#4B494A"/>
                        <path d="M137.815 5.41553V8.47964H130.19V11.615H137.066V14.5366H130.19V17.7076H138.064V20.7361H126.77V5.41553H137.815Z" fill="#4B494A"/>
                        <path d="M145.724 8.05241C145.154 8.05241 144.691 8.19492 144.371 8.44433C144.05 8.72936 143.872 9.08565 143.872 9.5132C143.872 9.97638 144.086 10.297 144.477 10.5821C144.869 10.8315 145.796 11.1521 147.257 11.5084C148.717 11.8647 149.857 12.3992 150.641 13.1117C151.461 13.8243 151.853 14.8576 151.853 16.2471C151.853 17.6367 151.354 18.7412 150.321 19.5963C149.287 20.4514 147.933 20.8789 146.259 20.8789C143.836 20.8789 141.627 19.9882 139.703 18.1711L141.734 15.677C143.373 17.1378 144.905 17.8504 146.33 17.8504C146.971 17.8504 147.47 17.7079 147.827 17.4585C148.183 17.1735 148.361 16.8172 148.361 16.354C148.361 15.8908 148.183 15.5345 147.791 15.2495C147.399 14.9645 146.651 14.7151 145.546 14.43C143.765 14.0025 142.447 13.468 141.627 12.7911C140.808 12.1141 140.38 11.0453 140.38 9.58446C140.38 8.12366 140.915 7.01916 141.948 6.19969C142.981 5.41585 144.299 5.02393 145.867 5.02393C146.9 5.02393 147.898 5.20207 148.931 5.55836C149.964 5.91466 150.855 6.41346 151.603 7.05479L149.857 9.54883C148.539 8.58684 147.15 8.05241 145.724 8.05241Z" fill="#4B494A"/>
                        <path d="M159.119 8.05241C158.549 8.05241 158.086 8.19492 157.765 8.44433C157.444 8.72936 157.266 9.08565 157.266 9.5132C157.266 9.97638 157.48 10.297 157.872 10.5821C158.264 10.8315 159.19 11.1521 160.651 11.5084C162.112 11.8647 163.252 12.3992 164.036 13.1117C164.855 13.8243 165.247 14.8576 165.247 16.2471C165.247 17.6367 164.748 18.7412 163.715 19.5963C162.682 20.4514 161.328 20.8789 159.653 20.8789C157.231 20.8789 155.022 19.9882 153.098 18.1711L155.129 15.677C156.767 17.1378 158.3 17.8504 159.725 17.8504C160.366 17.8504 160.829 17.7079 161.221 17.4585C161.577 17.1735 161.756 16.8172 161.756 16.354C161.756 15.8908 161.577 15.5345 161.185 15.2495C160.794 14.9645 160.045 14.7151 158.941 14.43C157.159 14.0025 155.841 13.468 155.022 12.7911C154.202 12.1141 153.775 11.0453 153.775 9.58446C153.775 8.12366 154.309 7.01916 155.342 6.19969C156.376 5.41585 157.694 5.02393 159.262 5.02393C160.295 5.02393 161.292 5.20207 162.326 5.55836C163.359 5.91466 164.25 6.41346 164.998 7.05479L163.252 9.54883C161.898 8.58684 160.509 8.05241 159.119 8.05241Z" fill="#4B494A"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M62.174 6.55577C63.8842 7.41087 66.4495 9.51299 68.6941 12.0427C70.4399 9.58425 76.6751 3.13537 82.6608 0C75.0717 6.52014 72.7202 10.2256 68.801 16.9595C66.0219 13.2184 63.0647 10.7244 60.25 9.37047L62.174 6.55577Z" fill="#0C88CA"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M62.174 6.55566C63.8842 7.41076 66.4495 9.51289 68.6941 12.0426L66.9127 14.6079C64.7036 12.1494 62.4234 10.4036 60.25 9.37037L62.174 6.55566Z" fill="#054B80"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0 28.3254H44.002V27.6484H0V28.3254ZM120.142 28.3254H164.357V27.6484H120.142V28.3254Z" fill="#4B494A"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M68.6916 12.0425C68.0147 12.862 67.409 13.7527 66.9102 14.6078L68.7985 16.9593C69.3686 15.9973 69.8317 15.2135 70.4018 14.2515C70.0455 13.6102 69.1548 12.47 68.6916 12.0425Z" fill="#0F66B0"/>
                        <path d="M49.6321 29.9646H47.9219V26.0811H49.4183C49.6677 26.0811 49.9171 26.1167 50.0953 26.1879C50.2734 26.2592 50.4159 26.3305 50.5228 26.4373C50.7009 26.6511 50.7722 26.8649 50.7722 27.1143C50.7722 27.435 50.6653 27.6487 50.4872 27.7913C50.4159 27.8269 50.3803 27.8625 50.3447 27.8981C50.309 27.8981 50.2734 27.9338 50.2021 27.9694C50.4515 28.005 50.6297 28.1119 50.7722 28.2901C50.9147 28.4682 50.986 28.6464 50.986 28.8958C50.986 29.1808 50.8791 29.3946 50.7009 29.6083C50.5228 29.8221 50.1309 29.9646 49.6321 29.9646ZM48.5632 27.6844H49.3827C49.8458 27.6844 50.0953 27.5062 50.0953 27.1856C50.0953 27.0074 50.024 26.8649 49.9171 26.7936C49.8102 26.7224 49.6321 26.6868 49.3827 26.6868H48.5276V27.6844H48.5632ZM48.5632 29.3589H49.5964C49.8458 29.3589 50.024 29.3233 50.1665 29.2521C50.309 29.1808 50.3447 29.0383 50.3447 28.8245C50.3447 28.4682 50.0596 28.2901 49.5252 28.2901H48.5632V29.3589Z" fill="#4B494A"/>
                        <path d="M56.6141 26.0811V26.6868H54.5476V27.72H56.4359V28.2901H54.5476V29.3233H56.6853V29.9646H53.9062V26.0811H56.6141Z" fill="#4B494A"/>
                        <path d="M61.0671 26.6868V29.9646H60.4258V26.6868H59.25V26.0811H62.2429V26.6868H61.0671Z" fill="#4B494A"/>
                        <path d="M66.4851 26.6868V29.9646H65.8437V26.6868H64.668V26.0811H67.6608V26.6868H66.4851Z" fill="#4B494A"/>
                        <path d="M73.1849 26.0811V26.6868H71.1184V27.72H72.9711V28.2901H71.1184V29.3233H73.2561V29.9646H70.4414V26.0811H73.1849Z" fill="#4B494A"/>
                        <path d="M79.2399 27.3281C79.2399 27.9694 78.9549 28.3613 78.3848 28.5395L79.418 29.9646H78.5986L77.6722 28.6464H76.8171V29.9646H76.1758V26.0811H77.6366C78.2423 26.0811 78.6698 26.1879 78.9192 26.3661C79.133 26.5799 79.2399 26.9005 79.2399 27.3281ZM77.6366 28.0407C77.9929 28.0407 78.2423 27.9694 78.3848 27.8625C78.5273 27.7556 78.5986 27.5775 78.5986 27.2924C78.5986 27.0074 78.5273 26.8649 78.3848 26.758C78.2423 26.6511 77.9929 26.6155 77.6366 26.6155H76.8171V28.005H77.6366V28.0407Z" fill="#4B494A"/>
                        <path d="M85.4758 29.9646H83.7656V26.0811H85.262C85.5115 26.0811 85.7609 26.1167 85.939 26.1879C86.1172 26.2592 86.2597 26.3305 86.3666 26.4373C86.5447 26.6511 86.616 26.8649 86.616 27.1143C86.616 27.435 86.5091 27.6487 86.3309 27.7913C86.2597 27.8269 86.224 27.8625 86.1884 27.8981C86.1528 27.8981 86.1172 27.9338 86.0459 27.9694C86.2953 28.005 86.4734 28.1119 86.616 28.2901C86.7585 28.4682 86.8297 28.6464 86.8297 28.8958C86.8297 29.1808 86.7228 29.3946 86.5447 29.6083C86.4022 29.8221 86.0103 29.9646 85.4758 29.9646ZM84.4426 27.6844H85.262C85.7252 27.6844 85.9746 27.5062 85.9746 27.1856C85.9746 27.0074 85.9034 26.8649 85.7965 26.7936C85.6896 26.7224 85.5115 26.6868 85.262 26.6868H84.407V27.6844H84.4426ZM84.4426 29.3589H85.4758C85.7252 29.3589 85.9034 29.3233 86.0459 29.2521C86.1884 29.1808 86.224 29.0383 86.224 28.8245C86.224 28.4682 85.939 28.2901 85.4046 28.2901H84.4426V29.3589Z" fill="#4B494A"/>
                        <path d="M92.493 26.0811V26.6868H90.4265V27.72H92.2792V28.2901H90.4265V29.3233H92.5642V29.9646H89.7852V26.0811H92.493Z" fill="#4B494A"/>
                        <path d="M98.1566 26.5798C97.9784 26.5798 97.8003 26.6155 97.6934 26.6867C97.5865 26.758 97.5153 26.8649 97.5153 27.043C97.5153 27.1855 97.5865 27.328 97.6934 27.3993C97.8003 27.4706 98.0853 27.5774 98.4772 27.6843C98.8692 27.7912 99.1898 27.8981 99.368 28.0763C99.5818 28.2544 99.653 28.5038 99.653 28.8601C99.653 29.2164 99.5105 29.4658 99.2611 29.6796C99.0117 29.8933 98.6554 30.0002 98.2635 30.0002C97.6578 30.0002 97.1233 29.7865 96.6602 29.3589L97.0877 28.8601C97.4796 29.2164 97.8716 29.3589 98.2991 29.3589C98.5129 29.3589 98.691 29.3233 98.7979 29.2164C98.9048 29.1095 98.9761 29.0026 98.9761 28.8601C98.9761 28.7176 98.9048 28.6107 98.7979 28.5038C98.691 28.4325 98.4773 28.3613 98.1922 28.29C97.9072 28.2188 97.6934 28.1475 97.5509 28.1119C97.4084 28.0406 97.2659 27.9694 97.159 27.8981C96.9452 27.72 96.8027 27.4706 96.8027 27.1143C96.8027 26.758 96.9452 26.4729 97.1946 26.2948C97.444 26.1167 97.7647 26.0098 98.1566 26.0098C98.406 26.0098 98.6554 26.0454 98.9048 26.1167C99.1542 26.1879 99.368 26.3304 99.5461 26.4729L99.1898 26.9718C99.0829 26.8649 98.9048 26.7936 98.7267 26.7223C98.5485 26.6155 98.3704 26.5798 98.1566 26.5798Z" fill="#4B494A"/>
                        <path d="M103.112 29.0739L102.72 29.9646H102.008L103.718 26.0811H104.431L106.141 29.9646H105.428L105.036 29.0739H103.112ZM104.787 28.4682L104.074 26.8649L103.362 28.4682H104.787Z" fill="#4B494A"/>
                        <path d="M109.419 26.6868V27.7556H111.129V28.3613H109.419V29.9646H108.742V26.0811H111.343V26.6868H109.419Z" fill="#4B494A"/>
                        <path d="M116.9 26.0811V26.6868H114.833V27.72H116.686V28.2901H114.833V29.3233H116.971V29.9646H114.156V26.0811H116.9Z" fill="#4B494A"/>
                    </svg>

                </div>
            </div>
        </div>
	</footer>
</div>
<?php wp_footer(); ?>
<div class="menuMobile">
	<?php
	wp_nav_menu(
			array(
					'menu'         => 'Footer',
					'container'       => 'nav',
					'container_class' => 'links',
					'container_id'    => '',
					'menu_class'      => '',
					'menu_id'         => false,
					'echo'            => true,
					'fallback_cb'     => 'wp_page_menu',
					'before'          => '',
					'after'           => '',
					'link_before'     => '',
					'link_after'      => '',
					'items_wrap'      => '%3$s',
					'depth'           => 1,
					'walker'          => new Custom_Walker_Nav_Menu()
			)
	);
	?>
    <div class="register">
        <a href="#" class="btn">Register</a>
    </div>
</div>
</body>
</html>