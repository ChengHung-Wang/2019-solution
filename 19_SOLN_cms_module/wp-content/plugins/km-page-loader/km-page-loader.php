<?php
/*
 * Plugin Name: Page Loader
 * Version: 2020.08.14
 */

class PageLoader
{
    public function __construct()
    {
        add_action('wp_footer', [$this, 'loaderHtml']);
        add_action('wp_enqueue_scripts', [$this, 'loaderScripts']);
    }

    public function loaderHtml()
    {
        ?>
        <div id="page-loading">
            <div class="box">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
        <?php
    }

    public function loaderScripts()
    {
        wp_enqueue_style('page-loader', plugins_url('page-loader.css', __FILE__));
        wp_enqueue_script('page-loader', plugins_url('page-loader.js', __FILE__), ['jquery']);
    }
}

new PageLoader;
