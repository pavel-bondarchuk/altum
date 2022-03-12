jQuery(document).ready(function ($) {
    $('.header .links .parent').hover(function () {
        $this = $(this);
            if ($this.next('ul.submenu').length > 0) {
                $this.next('ul.submenu').show();
                $this.addClass('active');
            }
        },
        function () {
            setTimeout(function(){
                if (!$this.next('ul.submenu:hover').length > 0) {
                    $this.removeClass('active');
                }
            }, 1000);
        });
    $('.header .links .submenu').hover(function () {},
        function () {
            if ($(this).closest('.item').find('.parent').length > 0) {
                $(this).closest('.item').find('.parent').removeClass('active');
            }
        });


    $('.overlay').on('click',function (e) {
        e.preventDefault();
        $(this).toggleClass('isOpen');
        $('.modalContainer').removeClass('opened');
        if ($(".menuMobile").hasClass('opened')) {
            $(".menuMobile").toggleClass('opened');
        }
    });
    $('.modalCloseBtn, .modalCloseAction').on('click',function (e) {
        e.preventDefault();
        $('.overlay').toggleClass('isOpen');
        $(this).closest('.modalContainer').toggleClass('opened');
    });

    $('#subscribe').on('click',function (e) {
        e.preventDefault();
        $('.overlay').toggleClass('isOpen');
        $('.modalSubscribe').toggleClass('opened');
    });
    $('#saveArt').on('click',function (e) {
        e.preventDefault();
        $('.overlay').toggleClass('isOpen');
        $('.modalAddSuccess').toggleClass('opened');
    });
    $('#upgrade').on('click',function (e) {
        e.preventDefault();
        $('.overlay').toggleClass('isOpen');
        $('.modalUpgradePlan').toggleClass('opened');
    });


    $(".toggleBox .btn").on('click', function(e){
        $(this).parent().find('.btn').removeClass('active');
        $(this).toggleClass('active');
        if ($(this).parent().hasClass('add_form')) {
            $(".formContainer .form").attr('data-form',$(this).data("form"));
        }
    });
    $(".viewMode .btn").on('click', function(e){
        var view_mode = $(this).data("mode");
        $(".artifacts").attr('data-mode',view_mode);
    });

    $(".userToggle").on('click', function(e){
        e.preventDefault();
        $(this).next(".submenu").toggleClass('opened');
    });
    $(".hamburger").on('click', function(e){
        e.preventDefault();
        $(this).toggleClass('is-active');
        $(".menuMobile").toggleClass('opened');
        $('.overlay').toggleClass('isOpen');
        $('body').toggleClass('no-scroll');
    });
    $(".lang_switcher").on('click', function(e){
        e.preventDefault();
        $(".lang_switcher li:not(.current-lang)").toggleClass('active');
    });
    $(".menuMobile .parent").on('click', function(e){
        e.preventDefault();
        $(this).toggleClass('active');
    });
    $(".footer .parent").on('click', function(e){
        e.preventDefault();
        $(this).toggleClass('active');
    });

    // const swiper = new Swiper('.artifactItemsSlider .swiper-container', {
    //     loop: true,
    //     observer: true,
    //     observeParents: true,
    //     navigation: {
    //         nextEl: '.sliderNext',
    //         prevEl: '.sliderPrev',
    //     },
    // });
    // const gallery = new Swiper('.latestSlider .swiper-container', {
    //     slidesPerView: 1,
    //     slidesPerGroup: 6,
    //     spaceBetween: 16,
    //     loop: true,
    //     observer: true,
    //     observeParents: true,
    //     navigation: {
    //         nextEl: '.sliderNext',
    //         prevEl: '.sliderPrev',
    //     },
    //     breakpoints: {
    //         640: {
    //             slidesPerView: 3,
    //             spaceBetween: 16,
    //         },
    //         1024: {
    //             slidesPerView: 6,
    //             spaceBetween: 30,
    //         },
    //     }
    // });
    // var $trigger = $(".submenu, .userToggle");
    // if($trigger !== event.target && !$trigger.has(event.target).length){
    //     $(".submenu").removeClass('opened');
    // }
});