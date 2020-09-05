<?php
/*
 * Plugin Name: Social Icons
 * Version: 2020.08.14
 */

class SocialIcons
{
    private $option = 'social-icons';

    public function __construct()
    {
        add_action('init', [$this, 'initOption']);
        add_action('admin_menu', [$this, 'addMenu']);
        add_action('admin_post_' . $this->option, [$this, 'postMenu']);

        add_action('wp_enqueue_scripts', [$this, 'enqueueScripts']);

        add_shortcode('social-icons', [$this, 'shortcode']);
    }

    public function enqueueScripts()
    {
        wp_enqueue_style('km-social-icons-fontawesome', plugins_url('fontawesome/css/all.css', __FILE__));
        wp_enqueue_style('km-social-icons', plugins_url('social-icons.css', __FILE__));
    }

    public function initOption()
    {
        add_option($this->option, [
            'facebook'  => [
                'class' => 'fa-facebook-f',
                'show'  => true,
                'link'  => '#',
            ],
            'twitter'   => [
                'class' => 'fa-twitter',
                'show'  => true,
                'link'  => '#',
            ],
            'instagram' => [
                'class' => 'fa-instagram',
                'show'  => true,
                'link'  => '#',
            ],
        ]);
    }

    public function addMenu()
    {
        add_menu_page(
            'Social Icons',
            'Social Icons',
            'manage_options',
            'km-social-icons',
            [$this, 'addMenuHtml'],
            '',
            30
        );
    }

    public function addMenuHtml()
    {
        $options = get_option($this->option);
        ?>
        <div class="wrap">
            <form action="<?= admin_url('admin-post.php') ?>" method="POST">
                <input type="hidden" name="action" value="<?= $this->option ?>">
                <table class="widefat">
                    <thead>
                    <tr>
                        <th>Icon</th>
                        <th>Show / Hide</th>
                        <th>URL</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($options as $name => $option) { ?>
                        <input type="hidden" name="option[<?= $name ?>]">
                        <input type="hidden" name="option[<?= $name ?>][class]" value="<?= $option['class'] ?>">
                        <tr>
                            <td><?= $name ?></td>
                            <td>
                                <input type="radio" name="option[<?= $name ?>][show]"
                                       value="true" <?= $option['show'] == true ? 'checked' : '' ?>>
                                <input type="radio" name="option[<?= $name ?>][show]"
                                       value="false" <?= $option['show'] == false ? 'checked' : '' ?>>
                            </td>
                            <td>
                                <input type="text" name="option[<?= $name ?>][link]" value="<?= $option['link'] ?>">
                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
                <p>
                    <button class="button button-primary">Save</button>
                </p>
            </form>
        </div>
        <?php
    }

    public function postMenu()
    {
        update_option($this->option, $_POST['option']);
        wp_redirect(wp_get_referer());
    }

    public function shortcode()
    {
        $options = get_option($this->option);
        ?>
        <div id="social-icons">
            <?php foreach ($options as $name => $option) { ?>
                <?php if ($option['show']) { ?>
                    <a href="<?= $option['link'] ?>" title="<?= $name ?>">
                        <i class="fab <?= $option['class'] ?>"></i>
                    </a>
                <?php } ?>
            <?php } ?>
        </div>
        <?php
    }
}

new SocialIcons;
