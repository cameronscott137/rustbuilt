<?php

$rb_jobs = new WPAlchemy_MetaBox(array
(
	'id' => 'jobs',
	'title' => 'Jobs',
	'template' => get_stylesheet_directory() . '/metaboxes/jobs-meta.php',
	'types' => array('page', 'jobs'),
	//'include_template' => array('template-jobs.php'), // use an array for multiple items
	'context' => 'normal',
	'priority' => 'high',
	'autosave' => TRUE
));

/* eof */