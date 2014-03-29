<div class="my_meta_control">
 
	<label>Case Study #1</label>
 
	<p>
		<input type="text" name="<?php $metabox->the_name('name1'); ?>" value="<?php $metabox->the_value('name1'); ?>"/>
		<span>Enter in a name</span>
	</p>


	<label>Description <span>(optional)</span></label>
 
	<p>
		<?php $metabox->the_field('description1'); ?>
		<textarea name="<?php $metabox->the_name(); ?>" rows="3"><?php $metabox->the_value(); ?></textarea>
		<span>Enter in a description</span>
	</p>

	<hr>

	<label>Case Study #2</label>
 
	<p>
		<input type="text" name="<?php $metabox->the_name('name2'); ?>" value="<?php $metabox->the_value('name2'); ?>"/>
		<span>Enter in a name</span>
	</p>
 
	<label>Description <span>(optional)</span></label>
 
	<p>
		<?php $metabox->the_field('description2'); ?>
		<textarea name="<?php $metabox->the_name(); ?>" rows="3"><?php $metabox->the_value(); ?></textarea>
		<span>Enter in a description</span>
	</p>

	<hr>

	<label>Case Study #3</label>
 
	<p>
		<input type="text" name="<?php $metabox->the_name('name3'); ?>" value="<?php $metabox->the_value('name3'); ?>"/>
		<span>Enter in a name</span>
	</p>
 
	<label>Description <span>(optional)</span></label>
 
	<p>
		<?php $metabox->the_field('description3'); ?>
		<textarea name="<?php $metabox->the_name(); ?>" rows="3"><?php $metabox->the_value(); ?></textarea>
		<span>Enter in a description</span>
	</p>

</div>