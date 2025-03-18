<hr>
<h2>Comments</h2>

% for(c in `{ls -r $comments_dir/}) {
%    if(test -s $c/body) {
        <div class="comment">
            <h5>By: <i>%(`{cat $c/user}%)</i></b> (%(`{cat $c/posted}%))
        </h5>
%       cat $c/body | escape_html | sed 's,$,<br>,'

%    if(check_user $conf_bridge_deletors) {
<br/>
<form action="" method="POST" enctype="multipart/form-data">
<input type="hidden" name="bridge_delete_id" value="%(`{basename $c}%)" />
<input type="submit" name="bridge_delete" value="Delete"/>
</form>
%    }

<hr>
</div>
%    }
% }
