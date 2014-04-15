CKEDITOR.editorConfig = function( config ) {
    config.language = 'zh-CN';
    config.uiColor = '#AADC6E';
    config.toolbarGroups = [
    { name: 'basicstyles', groups: ['tools', 'basicstyles', 'cleanup' , 'colors', 'styles' ] },
    { name: 'editing',     groups: ['find', 'selection', 'spellchecker','links','others'] },
    { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
    { name: 'links' },
    { name: 'insert' },
    { name: 'forms' },
    { name: 'tools' },
    { name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
    { name: 'others' },
    { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
    { name: 'styles' },
    { name: 'colors' },
];
};
