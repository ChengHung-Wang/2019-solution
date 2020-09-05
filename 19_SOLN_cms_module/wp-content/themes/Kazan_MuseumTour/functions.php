<?php

class KazanMuseum
{
    public function __construct()
    {
        // init
        add_action('init', [$this, 'setPostTypes']);

        // admin
        add_action('login_enqueue_scripts', [$this, 'loginScripts']);
        add_action('admin_menu', [$this, 'setDashboard']);

        // front
        add_action('wp_enqueue_scripts', [$this, 'scripts']);
    }

    public function setPostTypes()
    {
        $page = get_post_type_object('page');
        foreach ($page->labels as $key => $value) {
            $page->labels->{$key} =
                str_replace('page', 'museum', str_replace('Page', 'Museum', $value));
        }

        $page->show_in_rest = false;
        $page->menu_icon = 'dashicons-admin-multisite';

        $post = get_post_type_object('post');
        foreach ($post->labels as $key => $value) {
            $post->labels->{$key} =
                str_replace('post', 'news post', str_replace('Post', 'News Post', $value));
        }

        $post->show_in_rest = false;
        $post->menu_icon = 'dashicons-media-document';
    }

    public function loginScripts()
    {
        wp_enqueue_style('km-login', get_stylesheet_directory_uri() . '/css/login.css');
    }

    public function setDashboard()
    {
        remove_action( 'welcome_panel', 'wp_welcome_panel' );
        remove_meta_box('dashboard_site_health', 'dashboard', 'normal');
        remove_meta_box('wpseo-dashboard-overview', 'dashboard', 'normal');
        remove_meta_box('dashboard_primary', 'dashboard', 'side');
    }

    public function scripts()
    {
        // wp_enqueue_script('turbolinks', get_stylesheet_directory_uri() . '/js/turbolinks.min.js');
        // wp_enqueue_script('turbolinks-custom', get_stylesheet_directory_uri() . '/js/turbolinks-custom.js', ['turbolinks', 'jquery']);
        wp_enqueue_script('fixed-header', get_stylesheet_directory_uri() . '/js/scroll.js', ['jquery']);
    }
}

new KazanMuseum;
