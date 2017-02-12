<div id="elfinder">
</div>
<script>
$().ready(function() {
    var elf = $('#elfinder').elfinder({
        //   lang: 'zh_TW',             // language (OPTIONAL)
        url: '<?php echo bUrl('
        elfinder ')?>' // connector URL (REQUIRED)
    }).elfinder('instance');
});
</script>
