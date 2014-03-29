<div class="my_meta_control">

	<p>
		<input type="text" name="<?php $metabox->the_name('company-name'); ?>" value="<?php $metabox->the_value('company-name'); ?>"/>
		<span>Company Name</span>
	</p>


	<p>
		<input type="text" name="<?php $metabox->the_name('company-url'); ?>" value="<?php $metabox->the_value('company-url'); ?>"/>
		<span>Company URL</span>
	</p>

 
	<p>
		<input type="text" name="<?php $metabox->the_name('contact-email'); ?>" value="<?php $metabox->the_value('contact-email'); ?>"/>
		<span>Contact Email</span>
	</p>

	<p>
		<input type="text" name="<?php $metabox->the_name('contact-url'); ?>" value="<?php $metabox->the_value('contact-url'); ?>"/>
		<span>Contact URL</span>
	</p>
 
	<p>
		<?php $metabox->the_field('description'); ?>
		<textarea name="<?php $metabox->the_name(); ?>" rows="3"><?php $metabox->the_value(); ?></textarea>
		<span>Job Description</span>
	</p>


</div>