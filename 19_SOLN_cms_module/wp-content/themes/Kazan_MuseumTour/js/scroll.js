jQuery(document).ready(function ($) {
    $(window).scroll(function () {
        if ( $(window).scrollTop() ) {
            $('#header').addClass('fixed');
        } else {
            $('#header').removeClass('fixed');
        }
    });
});
