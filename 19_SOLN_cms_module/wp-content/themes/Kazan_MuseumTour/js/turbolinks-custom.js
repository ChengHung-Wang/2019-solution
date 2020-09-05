Turbolinks.setProgressBarDelay(0);

(function ($) {

    let animating = false;

    $(document)
        .on('turbolinks:load', function () {

            $('#wpadminbar').attr('data-turbolinks', false);

            setTimeout(() => {
                animating = false;
                $('body').addClass('hide-animation');
            }, 300);

        })
        .on('turbolinks:before-visit', function (e) {
            if (!animating) {
                $('body').removeClass('hide-animation');
                e.preventDefault();
                setTimeout(() => {
                    animating = true;
                    Turbolinks.visit(e.originalEvent.data.url);
                }, 300);
            }
        });

    $(window).on('popstate', function (e) {

        e.preventDefault();
        $('body').removeClass('hide-animation');

    });


    // $(document).on('turbolinks:fetch', function () {
    //     $('body').removeClass('loading-hide');
    // });

})(jQuery);
