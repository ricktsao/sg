<div action="" class="page-function">
    <button>返回上一頁</button>
</div>
<form action="">
    <table class="page-form-table">
        <tbody>
            <tr>
                <td class="title-col">欄位名稱</td>
                <td>
                    <div>
                        <input type="text" placeholder="欄位名稱">
                    </div>
                    <div class="error">123</div>
                </td>
            </tr>
            <tr>
                <td class="title-col">欄位名稱</td>
                <td>
                    <div>
                        <select>
                            <option>123456</option>
                            <option>123456</option>
                            <option>123456</option>
                        </select>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="title-col">欄位名稱</td>
                <td>
                    <div>
                        <label>
                            <input type="radio" name="radio"> Y
                        </label>
                        <label>
                            <input type="radio" name="radio"> N
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="title-col">欄位名稱</td>
                <td>
                    <div>
                        <label class="checkbox">
                            <input type="checkbox">
                            <i class="fa fa-check" aria-hidden="true"></i> abcde
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="align-center">文字框</td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea id="mytextarea"></textarea>
                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="2">
                    <button>存檔</button>
                </td>
            </tr>
        </tfoot>
    </table>
</form>
<script>
tinymce.init({
    selector: '#mytextarea',
    language: 'zh_TW',
    plugins: [
        'advlist autolink lists link image charmap print preview hr anchor pagebreak',
        'searchreplace wordcount visualblocks visualchars code fullscreen',
        'insertdatetime media nonbreaking save table contextmenu directionality',
        'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc'
    ],
    toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
    toolbar2: ' preview media | forecolor ',
    image_advtab: true,
    relative_urls: false,
    remove_script_host: false,
    file_browser_callback: elFinderBrowser
});

function elFinderBrowser(field_name, url, type, win) {
    tinymce.activeEditor.windowManager.open({
        file: "<?php echo backendUrl('fileManager')?>", // use an absolute path!
        title: 'elFinder 2.0',
        width: 900,
        height: 450,
        resizable: 'yes'
    }, {
        setUrl: function(url) {
            win.document.getElementById(field_name).value = url;
        }
    });
    return false;
}
</script>
