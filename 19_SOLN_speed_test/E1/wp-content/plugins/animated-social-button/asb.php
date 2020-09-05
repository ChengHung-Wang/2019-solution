<?php
/*
 * Plugin Name: Animated Social Button
 * Version: 1.0
 */

add_action('wp_enqueue_scripts', function () {
    wp_enqueue_style('fontawesome', plugins_url('fontawesome/css/all.css', __FILE__));
    wp_enqueue_style('style', plugins_url('style.css', __FILE__));
});

add_shortcode('asb', function () {
    ?>
    <div class="asb">
        <a href="#" class="asb-link asb-link-1">
            <i class="fab fa-facebook-f"></i>
        </a>
        <a href="#" class="asb-link asb-link-2">
            <i class="fab fa-pinterest"></i>
        </a>
        <a href="#" class="asb-link asb-link-3">
            <i class="fab fa-twitter"></i>
        </a>
        <a href="#" class="asb-link asb-link-4">
            <i class="fab fa-tumblr"></i>
        </a>
    </div>
    <?php
});
