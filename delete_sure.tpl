<form action="" method="POST" enctype="multipart/form-data">

% if(~ 1 $#post_arg_bridge_delete_id ) {
<input type="hidden" name="bridge_delete_id" value="%($post_arg_bridge_delete_id"%) />
% }

<input type="submit" name="bridge_delete_yes" value="Are you sure you want to delete?" />
</form>
