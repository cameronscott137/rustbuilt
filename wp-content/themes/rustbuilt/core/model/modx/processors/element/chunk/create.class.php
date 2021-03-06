<?php
require_once (dirname(dirname(__FILE__)).'/create.class.php');
/**
 * Creates a chunk.
 *
 * @param string $name The name of the chunk.
 * @param string $description (optional) The description of the chunk.
 * @param integer $category The category the chunk is assigned to.
 * @param string $snippet The code of the chunk.
 * @param boolean $locked Whether or not the chunk can only be accessed by
 * administrators.
 * @param json $propdata A json array of properties to store.
 *
 * @package modx
 * @subpackage processors.element.chunk
 */
class modChunkCreateProcessor extends modElementCreateProcessor {
    public $classKey = 'modChunk';
    public $languageTopics = array('chunk');
    public $permission = 'new_chunk';
    public $elementType = 'chunk';
    public $objectType = 'chunk';
    public $beforeSaveEvent = 'OnBeforeChunkFormSave';
    public $afterSaveEvent = 'OnChunkFormSave';
}
return 'modChunkCreateProcessor';
