jQuery(document).ready(function ($) {
	$('.loadmore').on('click', function (e) {
		e.preventDefault();
		$.ajax({
			url: loadmore_params.ajaxurl,
			data: {
				'action': 'loadmore',
				'query': loadmore_params.posts,
				'page': loadmore_params.current_page
			},
			type: 'POST',
			beforeSend: function (xhr) {
				$('.loadmore .btn').text('Loading...');
				console.log(loadmore_params);
			},
			success: function (posts) {
				if (posts) {

					$('.loadmore .btn').html('More posts');
					$('.cards-wrapper .inner').append(posts);
					loadmore_params.current_page++;

					if (loadmore_params.current_page == loadmore_params.max_page)
						$('.loadmore').hide();

				} else {
					$('.loadmore').hide();
				}
			}
		});
		return false;
	});
	$(":checkbox").change(function () {
		var positions = [];
		$('input[name="position[]"]:checked').each(function (index, value) {
			positions.push($(this).val());
		});
		var countries = [];
		$('input[name="country[]"]:checked').each(function (index, value) {
			countries.push($(this).val());
		});
		$.ajax({
			url: loadmore_params.ajaxurl,
			data: {
				'action': 'tax',
				positions: positions,
				countries: countries
			},
			type: 'POST',
			beforeSend: function (xhr) {
				$('.cards-wrapper .inner').addClass('loading');
			},
			success: function (posts) {
				if (posts) {
					$('.cards-wrapper .inner').removeClass('loading');
					$('.cards-wrapper .inner').html(posts);
					$('.cards-wrapper .not_found').hide();
				} else {
					$('.cards-wrapper .inner').removeClass('loading');
					$('.cards-wrapper .inner').empty();
					$('.cards-wrapper .not_found').show();
				}
			}
		});
		return false;
	});

});
