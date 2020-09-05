<?php
get_header();
?>

<div id="banner" class="sub"
     style="background-image: url(<?= get_stylesheet_directory_uri() ?>/images/visual-background.jpg)"
>
    <div class="cover container">
        <div class="caption">
            <div class="h1">
                Category
            </div>
            <div class="p">
                Archive Page
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- news -->
    <div class="section-title">
        <div class="desc">Kazan Museums Tourist Archive</div>
        <div class="h1"><?= single_term_title() ?></div>
    </div>
    <div class="deck">
        <?php while (have_posts()) {
            the_post(); ?>
            <div class="card">
                <div class="article">
                    <div class="text">
                        <a href="<?= get_permalink() ?>" class="h3">
                            <?= get_the_title() ?>
                        </a>
                        <div class="p">
                            <?= wp_strip_all_tags(get_the_content()) ?>
                        </div>
                    </div>
                    <a href="<?= get_permalink() ?>" class="btn">
                        Read More
                    </a>
                </div>
                <div class="img">
                    <?= get_the_post_thumbnail() ?>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<?php get_footer() ?>
