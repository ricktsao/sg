<form action="" class="page-function">
    <div>
        <div>
            <button type="button" onclick="self.location='<?php echo bUrl('editContent')?>'">新增社區</button>
        </div>
    </div>
    <div>
        <input type="text" placeholder="關鍵字">
        <button>搜尋</button>
    </div>
</form>
<form action="" id="page-datalist">
    <table class="page-table align-center">
        <thead>
            <tr>
                <th>社區名稱</th>
                <th>警衛人數</th>
                <th>建立日期</th>
                <th>操作</th>
                <th>
                    <button type="button">全選</button>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>社區A</td>
                <td>10人</td>
                <td>2017/01/01 18:02:30</td>
                <td>
                    <button>編輯社區</button>
                    <button>新增警衛</button>
                </td>
                <td>
                    <label class="checkbox">
                        <input type="checkbox">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </label>
                </td>
            </tr>
            <tr>
                <td>社區A</td>
                <td>10人</td>
                <td>2017/01/01 18:02:30</td>
                <td>
                    <button>編輯社區</button>
                    <button>新增警衛</button>
                </td>
                <td>
                    <label class="checkbox">
                        <input type="checkbox">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </label>
                </td>
            </tr>
            <tr>
                <td>社區A</td>
                <td>10人</td>
                <td>2017/01/01 18:02:30</td>
                <td>
                    <button>編輯社區</button>
                    <button>新增警衛</button>
                </td>
                <td>
                    <label class="checkbox">
                        <input type="checkbox">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </label>
                </td>
            </tr>
            <tr>
                <td>社區A</td>
                <td>10人</td>
                <td>2017/01/01 18:02:30</td>
                <td>
                    <button>編輯社區</button>
                    <button>新增警衛</button>
                </td>
                <td>
                    <label class="checkbox">
                        <input type="checkbox">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </label>
                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="4"></td>
                <td>
                    <button>刪除</button>
                </td>
            </tr>
        </tfoot>
    </table>
</form>
