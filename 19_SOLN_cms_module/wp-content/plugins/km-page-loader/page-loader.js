jQuery(document).ready(function ($) {
    $('#page-loading').fadeOut('slow');

    function visit(href) {
        $('#page-loading').fadeIn('slow', function () {
            $.get(href, function (html) {
                // const title = html.match(/<title>(.*)<\/title>/i)[1];
                // const body = html.match(/<body[^>]*>([\w|\W]*)<\/body>/i)[1];
                const domparser = new DOMParser;
                const doc = domparser.parseFromString(html, 'text/html');
                const title = $(doc).find('title').text();
                const container = $(doc).find('#container').html();

                setTimeout(() => {
                    $('title').text(title);
                    $('#container').html(container);
                    $('#page-loading').fadeOut('slow');
                    $(window).scrollTop(0);
                }, 300);
            });
        });
    }

    $(document)
        .on('click', '[href]', function (e) {
            const href = $(this).attr('href');

            if ($(this).closest('#wpadminbar').length) return;

            e.preventDefault();
            history.pushState({}, '', href);
            visit(href);
        });

    $(window)
        .on('popstate', function (e) {
            visit(location.href);
        });
});
