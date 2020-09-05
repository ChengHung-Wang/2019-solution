<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>"/>
    <meta name="viewport" content="width=device-width"/>
    <meta name="cache-control" content="no-store">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<div id="wrapper" class="hfeed">
    <div class="fix">
        <header id="header">
            <div class="container">
                <div id="branding">
                    <div id="site-title">
                        <a href="<?php echo esc_url(home_url('/')); ?>" title="<?php echo esc_html(get_bloginfo('name')); ?>"
                           rel="home" class="h2"><?php echo esc_html(get_bloginfo('name')); ?></a>
                    </div>
                    <div id="site-description" class="desc"><?php bloginfo('description'); ?></div>
                </div>
                <nav id="menu">
                    <?php
                    wp_nav_menu(array(
                        'theme_location' => 'main-menu',
                        'container'      => 'ul',
                        'link_before'    => '<span class="hover">',
                        'link_after'     => '</span>',
                    ));
                    ?>
                </nav>
            </div>
        </header>
    </div>
    <div id="container">
