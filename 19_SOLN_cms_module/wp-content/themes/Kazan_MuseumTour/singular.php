<?php
get_header();
the_post();
?>

<div id="banner" class="sub"
     style="background-image: url( <?= has_post_thumbnail() ? get_the_post_thumbnail_url() : get_stylesheet_directory_uri() . '/images/visual-background.jpg' ?> )"
></div>

<div class="container">
    <div class="section-title sub">
        <div class="desc"><?= get_post_type_object(get_post()->post_type)->labels->singular_name; ?></div>
        <div class="h1"><?= get_the_title() ?></div>
    </div>
    <div class="p">
        <?= get_the_date('F j, Y') ?> | <?= get_the_author_meta('display_name', $post->post_author); ?>
    </div>
    <div class="p">
        <?= get_the_content() ?>
    </div>
</div>

<?php get_footer() ?>
