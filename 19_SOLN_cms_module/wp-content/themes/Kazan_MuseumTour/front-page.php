<?php get_header() ?>

<div id="banner"
     style="background-image: url(<?= get_stylesheet_directory_uri() ?>/images/visual.jpg)"
>
    <div class="cover container">
        <div class="caption">
            <div class="h1">
                Discover Best Museums of City Kazan
            </div>
            <div class="p">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores,
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- news posts -->
    <div class="section-title">
        <div class="desc">Kazan Museums News Posts</div>
        <div class="h1">News Post</div>
    </div>
    <div class="deck">
        <?php
        $posts = get_posts([
            'posts_per_page' => 6,
        ]);
        foreach ($posts as $post) {
            ?>
            <div class="card">
                <div class="article">
                    <div class="text">
                        <a href="<?=get_permalink($post)?>" class="h3">
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

    <!-- museums -->
    <div class="section-title">
        <div class="desc">All Kazan Museums</div>
        <div class="h1">Museum</div>
    </div>
    <div class="deck">
        <?php
        $posts = get_posts([
            'posts_per_page' => 6,
            'post_type'      => 'page',
        ]);
        foreach ($posts as $post) {
            ?>
            <div class="card">
                <div class="article">
                    <div class="text">
                        <a href="<?=get_permalink($post)?>" class="h3">
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

    <!-- contact -->
    <div class="section-title">
        <div class="desc">Contact Us</div>
        <div class="h1">Contact</div>
    </div>
    <div class="contact">
        <form action="https://formspree.io/email@domain.tld" method="POST">
            <div class="row">
                <input type="text" class="input" placeholder="Name" name="name">
                <input type="text" class="input" placeholder="E-mail" name="_replayto">
            </div>
            <div class="row">
                <textarea placeholder="Content" rows="10" class="textarea" name="content"></textarea>
            </div>
            <div class="row">
                <input type="submit" value="Send" class="btn">
            </div>
        </form>
    </div>
</div>

<?php get_footer() ?>
