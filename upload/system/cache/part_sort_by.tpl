<div class="cmtx_sort_by_block">
    <div class="cmtx_sort_by_container">
        <span class="cmtx_sort_by_text"><?php echo $lang_text_sort_by; ?></span>

        <select name="cmtx_sort_by" class="cmtx_sort_by_field" title="<?php echo $this->variable->encodeDouble($lang_title_sort_by); ?>">
            <?php if ($show_sort_by_1): ?>
                <option value="1" <?php echo $option_1_selected; ?>><?php echo $lang_entry_sort_by_1; ?></option>
            <?php endif; ?>

            <?php if ($show_sort_by_2): ?>
                <option value="2" <?php echo $option_2_selected; ?>><?php echo $lang_entry_sort_by_2; ?></option>
            <?php endif; ?>

            <?php if ($show_sort_by_3): ?>
                <option value="3" <?php echo $option_3_selected; ?>><?php echo $lang_entry_sort_by_3; ?></option>
            <?php endif; ?>

            <?php if ($show_sort_by_4): ?>
                <option value="4" <?php echo $option_4_selected; ?>><?php echo $lang_entry_sort_by_4; ?></option>
            <?php endif; ?>

            <?php if ($show_sort_by_5): ?>
                <option value="5" <?php echo $option_5_selected; ?>><?php echo $lang_entry_sort_by_5; ?></option>
            <?php endif; ?>

            <?php if ($show_sort_by_6): ?>
                <option value="6" <?php echo $option_6_selected; ?>><?php echo $lang_entry_sort_by_6; ?></option>
            <?php endif; ?>
        </select>
    </div>
</div>