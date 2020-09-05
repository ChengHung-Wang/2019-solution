<?php
/*
 * Template Name: Selected (highlighted) Museum
 */
?>

<?php
get_header();
the_post();
?>

<div id="banner" class="selected"
     style="
         background-image: url(
            <?= has_post_thumbnail() ? get_the_post_thumbnail_url() : get_stylesheet_directory_uri() . '/images/visual-background.jpg' ?>
         )
     "
>
    <div class="cover container">
        <div class="caption">
            <div class="desc">
                Kazan Museums Tourist Content
            </div>
            <div class="h1">
                <?= get_the_title() ?>
            </div>
            <div class="p">
                <?= get_the_date('F j, Y') ?> | <?= get_the_author_meta('display_name', $post->post_author); ?>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- content -->
    <div class="p">
        <?= get_the_content() ?>
    </div>

    <!-- news -->
    <div class="section-title">
        <div class="desc">Selected Museums</div>
        <div class="h1">Museum News</div>
    </div>
    <div class="deck">
        <?php
        $posts = get_posts([
            'posts_per_page' => -1,
            'category_name'  => get_post()->post_name
        ]);

        foreach ($posts as $post) {
            ?>
            <div class="card">
                <div class="article">
                    <div class="text">
                        <a href="<?= get_permalink($post) ?>" class="h3">
                            <?= get_the_title($post) ?>
                        </a>
                        <div class="p">
                            <?= wp_strip_all_tags($post->post_content) ?>
                        </div>
                    </div>
                    <a href="<?= get_permalink($post) ?>" class="btn">
                        Read More
                    </a>
                </div>
                <div class="img">
                    <?= get_the_post_thumbnail($post) ?>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<?php get_footer() ?>
