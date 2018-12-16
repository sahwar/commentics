<div id="cmtx_comments_container" class="cmtx_comments_container cmtx_clear">
    <h3 class="cmtx_comments_heading"><?php echo $lang_heading_comments; ?></h3>

    <?php if ($comments): ?>
        <?php if ($rich_snippets_enabled): ?>
            <div itemscope itemtype="http://schema.org/<?php echo $rich_snippets_type; ?>">
        <?php endif; ?>

        <?php if ($row_one): ?>
            <div class="cmtx_comments_row_one cmtx_clear" role="toolbar">
                <div class="cmtx_row_left <?php echo $cmtx_empty_position_1; ?>"><?php echo $comments_position_1; ?></div>
                <div class="cmtx_row_middle <?php echo $cmtx_empty_position_2; ?>"><?php echo $comments_position_2; ?></div>
                <div class="cmtx_row_right <?php echo $cmtx_empty_position_3; ?>"><?php echo $comments_position_3; ?></div>
            </div>
        <?php endif; ?>

        <?php if ($row_two): ?>
            <div class="cmtx_comments_row_two cmtx_clear" role="toolbar">
                <div class="cmtx_row_left <?php echo $cmtx_empty_position_4; ?>"><?php echo $comments_position_4; ?></div>
                <div class="cmtx_row_middle <?php echo $cmtx_empty_position_5; ?>"><?php echo $comments_position_5; ?></div>
                <div class="cmtx_row_right <?php echo $cmtx_empty_position_6; ?>"><?php echo $comments_position_6; ?></div>
            </div>
        <?php endif; ?>

        <div class="cmtx_comment_boxes" role="feed">
            <?php foreach ($comments as $comment): ?>
                <?php $reply_depth = 0; ?>

                <?php $count = 0; ?>

                <section class="cmtx_comment_section">
                    <?php require($this->loadTemplate('main/comment')); ?>

                    <?php if ($comment['reply_id']): ?>
                        <div class="cmtx_replies_group <?php echo $hide_replies; ?>">
                    <?php endif; ?>

                    <?php foreach ($comment['reply_id'] as $comment): ?>
                        <?php $reply_depth = 1; ?>
                        <?php $count++; ?>
                        <?php require($this->loadTemplate('main/comment')); ?>

                        <?php foreach ($comment['reply_id'] as $comment): ?>
                            <?php $reply_depth = 2; ?>
                            <?php $count++; ?>
                            <?php require($this->loadTemplate('main/comment')); ?>

                            <?php foreach ($comment['reply_id'] as $comment): ?>
                                <?php $reply_depth = 3; ?>
                                <?php $count++; ?>
                                <?php require($this->loadTemplate('main/comment')); ?>

                                <?php foreach ($comment['reply_id'] as $comment): ?>
                                    <?php $reply_depth = 4; ?>
                                    <?php $count++; ?>
                                    <?php require($this->loadTemplate('main/comment')); ?>

                                    <?php foreach ($comment['reply_id'] as $comment): ?>
                                        <?php $reply_depth = 5; ?>
                                        <?php $count++; ?>
                                        <?php require($this->loadTemplate('main/comment')); ?>
                                    <?php endforeach; ?>

                                <?php endforeach; ?>

                            <?php endforeach; ?>

                        <?php endforeach; ?>

                    <?php endforeach; ?>

                    <?php if ($count > 0): ?>
                        </div>
                    <?php endif; ?>

                    <span class="cmtx_reply_counter" style="display:none" hidden><?php echo $count; ?></span>
                </section>
            <?php endforeach; ?>
        </div>

        <?php if ($show_pagination && $pagination_type == 'button' && $total > $pagination_amount): ?>
            <div class="cmtx_more_button_row">
                <input type="button" id="cmtx_more_button" class="cmtx_button cmtx_button_primary" value="<?php echo $this->variable->encodeDouble($lang_button_more); ?>" title="<?php echo $this->variable->encodeDouble($lang_title_more_comments); ?>">
            </div>
        <?php endif; ?>

        <?php if ($is_permalink || $is_search): ?>
            <div class="cmtx_return"><?php echo $lang_text_return; ?></div>
        <?php endif; ?>

        <?php if ($row_three): ?>
            <div class="cmtx_comments_row_three cmtx_clear" role="toolbar">
                <div class="cmtx_row_left <?php echo $cmtx_empty_position_7; ?>"><?php echo $comments_position_7; ?></div>
                <div class="cmtx_row_middle <?php echo $cmtx_empty_position_8; ?>"><?php echo $comments_position_8; ?></div>
                <div class="cmtx_row_right <?php echo $cmtx_empty_position_9; ?>"><?php echo $comments_position_9; ?></div>
            </div>
        <?php endif; ?>

        <?php if ($row_four): ?>
            <div class="cmtx_comments_row_four cmtx_clear" role="toolbar">
                <div class="cmtx_row_left <?php echo $cmtx_empty_position_10; ?>"><?php echo $comments_position_10; ?></div>
                <div class="cmtx_row_middle <?php echo $cmtx_empty_position_11; ?>"><?php echo $comments_position_11; ?></div>
                <div class="cmtx_row_right <?php echo $cmtx_empty_position_12; ?>"><?php echo $comments_position_12; ?></div>
            </div>
        <?php endif; ?>

        <div class="cmtx_loading_icon" hidden></div>

        <div class="cmtx_action_message cmtx_action_message_success" hidden></div>
        <div class="cmtx_action_message cmtx_action_message_error" hidden></div>

        <?php if ($show_share): ?>
            <div class="cmtx_share_box" data-cmtx-reference="<?php echo $page_reference; ?>" hidden role="dialog">
                <?php if ($show_share_digg): ?>
                    <a href="#" <?php echo $share_new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_digg); ?>"><span class="cmtx_share cmtx_share_digg"></span></a>
                <?php endif; ?>

                <?php if ($show_share_facebook): ?>
                    <a href="#" <?php echo $share_new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_facebook); ?>"><span class="cmtx_share cmtx_share_facebook"></span></a>
                <?php endif; ?>

                <?php if ($show_share_linkedin): ?>
                    <a href="#" <?php echo $share_new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_linkedin); ?>"><span class="cmtx_share cmtx_share_linkedin"></span></a>
                <?php endif; ?>

                <?php if ($show_share_reddit): ?>
                    <a href="#" <?php echo $share_new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_reddit); ?>"><span class="cmtx_share cmtx_share_reddit"></span></a>
                <?php endif; ?>

                <?php if ($show_share_twitter): ?>
                    <a href="#" <?php echo $share_new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_twitter); ?>"><span class="cmtx_share cmtx_share_twitter"></span></a>
                <?php endif; ?>

                <?php if ($show_share_weibo): ?>
                    <a href="#" <?php echo $share_new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_weibo); ?>"><span class="cmtx_share cmtx_share_weibo"></span></a>
                <?php endif; ?>
            </div>
        <?php endif; ?>

        <?php if ($show_flag): ?>
            <div id="cmtx_flag_modal" class="cmtx_modal_box" hidden role="dialog">
                <header>
                    <a href="#" class="cmtx_modal_close">x</a>
                    <div><?php echo $lang_modal_flag_heading; ?></div>
                </header>
                <div class="cmtx_modal_body">
                    <div><span class="cmtx_icon cmtx_alert_icon" aria-hidden></span> <?php echo $lang_modal_flag_content; ?></div>
                </div>
                <footer>
                    <input type="button" id="cmtx_flag_modal_yes" class="cmtx_button cmtx_button_primary" value="<?php echo $this->variable->encodeDouble($lang_modal_yes); ?>">
                    <input type="button" id="cmtx_flag_modal_no" class="cmtx_button cmtx_button_secondary" value="<?php echo $this->variable->encodeDouble($lang_modal_no); ?>">
                </footer>
            </div>
        <?php endif; ?>

        <?php if ($show_permalink): ?>
            <div class="cmtx_permalink_box" hidden role="dialog">
                <div><?php echo $lang_text_permalink; ?></div>

                <input type="text" name="cmtx_permalink" id="cmtx_permalink" class="cmtx_permalink" value="">

                <div><a href="#"><?php echo $lang_link_close; ?></a></div>
            </div>
        <?php endif; ?>

        <input type="hidden" name="cmtx_next_page" id="cmtx_next_page" value="2">

        <div id="cmtx_loading_helper" data-cmtx-load="1" data-cmtx-total-comments="<?php echo $total; ?>"></div>

        <div id="cmtx_js_settings_comments" style="display:none" hidden><?php echo $cmtx_js_settings_comments; ?></div>

        <?php if ($rich_snippets_enabled): ?>
            </div>
        <?php endif; ?>
    <?php elseif ($permalink_no_results): ?>
        <div class="cmtx_no_permalink"><?php echo $lang_text_no_permalink; ?></div>
    <?php elseif ($search_no_results): ?>
        <div class="cmtx_no_results"><?php echo $lang_text_no_results; ?></div>
    <?php else: ?>
        <div class="cmtx_no_comments"><?php echo $lang_text_no_comments; ?></div>
    <?php endif; ?>
</div>