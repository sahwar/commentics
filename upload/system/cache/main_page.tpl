<div id="cmtx_container" class="cmtx_container">
    <?php echo $header; ?>

    <?php if ($maintenance_mode): ?>
        <h3><?php echo $lang_heading_maintenance; ?></h3>

        <div class="cmtx_maintenance_mode"><?php echo $maintenance_message; ?></div>
    <?php else: ?>
        <?php if ($order_parts == '1,2'): ?>
            <div class="cmtx_form_section"><?php echo $form; ?></div>
        <?php else: ?>
            <div class="cmtx_comments_section"><?php echo $comments; ?></div>
        <?php endif; ?>

        <?php if ($display_parsing): ?>
            <div class="cmtx_parsing_box cmtx_clear">
                <div><?php echo $lang_text_generated_in; ?> <?php echo $generated_time; ?> <?php echo $lang_text_seconds; ?></div>
                <div><b>PHP</b>: <?php echo $php_time; ?>s | <b>SQL</b>: <?php echo $query_time; ?>s (<?php echo $query_count; ?> <?php echo $lang_text_queries; ?>)</div>
            </div>
        <?php endif; ?>

        <?php if ($order_parts == '1,2'): ?>
            <div class="cmtx_comments_section"><?php echo $comments; ?></div>
        <?php else: ?>
            <div class="cmtx_form_section"><?php echo $form; ?></div>
        <?php endif; ?>
    <?php endif; ?>

    <?php if ($auto_detect): ?>
        <div id="cmtx_autodetect_modal" class="cmtx_modal_box" hidden role="dialog">
            <header>
                <div><?php echo $lang_modal_autodetect_heading; ?></div>
            </header>
            <div class="cmtx_modal_body">
                <?php echo $lang_modal_autodetect_content; ?>
            </div>
        </div>
    <?php endif; ?>

    <div id="cmtx_js_settings_page" style="display:none" hidden><?php echo $cmtx_js_settings_page; ?></div>

    <?php echo $footer; ?>
</div>