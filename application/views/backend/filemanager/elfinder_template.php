<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<?php echo site_url().$templateUrl?>lib/jquery-ui-1.12.1.custom/jquery-ui.min.css">
    <link rel="stylesheet" href="<?php echo site_url().$templateUrl?>lib/elFinder-2.1.21/css/elfinder.min.css">
    <script src="<?php echo site_url().$templateUrl?>lib/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script src="<?php echo site_url().$templateUrl?>lib/elFinder-2.1.21/js/elfinder.min.js"></script>
    <script src="<?php echo site_url().$templateUrl?>lib/elFinder-2.1.21/js/i18n/elfinder.zh_TW.js"></script>
</head>

<body>
    <div id="elfinder"></div>
    <script>
    var FileBrowserDialogue = {
        init: function() {
            // Here goes your code for setting your custom things onLoad.
        },
        mySubmit: function(URL) {
            // pass selected file path to TinyMCE
            parent.tinymce.activeEditor.windowManager.getParams().setUrl(URL);

            // force the TinyMCE dialog to refresh and fill in the image dimensions
            var t = parent.tinymce.activeEditor.windowManager.windows[0];
            t.find('#src').fire('change');

            // close popup window
            parent.tinymce.activeEditor.windowManager.close();
        }
    }


    $().ready(function() {
        var elf = $('#elfinder').elfinder({
            //   lang: 'zh_TW',             // language (OPTIONAL)
            url: "<?php echo bUrl('elfinder')?>", // connector URL (REQUIRED)
            getFileCallback: function(file) { // editor callback
            	console.log(file);
                // file.url - commandsOptions.getfile.onlyURL = false (default)
                // file     - commandsOptions.getfile.onlyURL = true
                FileBrowserDialogue.mySubmit(file.url); // pass selected file path to TinyMCE 
            }

        }).elfinder('instance');
    });
    </script>
</body>

</html>
