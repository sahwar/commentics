<div class="cmtx_social_block">
    <?php if ($show_digg): ?>
        <a href="<?php echo $digg_url; ?>" <?php echo $new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_digg); ?>"><span class="cmtx_social cmtx_social_digg"></span></a>
    <?php endif; ?>

    <?php if ($show_facebook): ?>
        <a href="<?php echo $facebook_url; ?>" <?php echo $new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_facebook); ?>"><span class="cmtx_social cmtx_social_facebook"></span></a>
    <?php endif; ?>

    <?php if ($show_linkedin): ?>
        <a href="<?php echo $linkedin_url; ?>" <?php echo $new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_linkedin); ?>"><span class="cmtx_social cmtx_social_linkedin"></span></a>
    <?php endif; ?>

    <?php if ($show_reddit): ?>
        <a href="<?php echo $reddit_url; ?>" <?php echo $new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_reddit); ?>"><span class="cmtx_social cmtx_social_reddit"></span></a>
    <?php endif; ?>

    <?php if ($show_twitter): ?>
        <a href="<?php echo $twitter_url; ?>" <?php echo $new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_twitter); ?>"><span class="cmtx_social cmtx_social_twitter"></span></a>
    <?php endif; ?>

    <?php if ($show_weibo): ?>
        <a href="<?php echo $weibo_url; ?>" <?php echo $new_window; ?> title="<?php echo $this->variable->encodeDouble($lang_title_weibo); ?>"><span class="cmtx_social cmtx_social_weibo"></span></a>
    <?php endif; ?>
</div>