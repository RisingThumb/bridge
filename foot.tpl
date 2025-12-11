<hr>

% notices_handler
<form action="" method="post">
    <textarea name="comment_text" id="comment_text" cols="80" maxlength="2048" rows="3" required>%($"saved_comment_text%)</textarea>
    <br>
    <input type="submit" name="bridge_post" value="Post a comment"> <br>

% if(~ $#logged_user 0) {
%   if(~ $#allow_new_user_comments 1) {
    <label>New user name:
        <input type="text" name="comment_user" value="%($"post_arg_comment_user%)" required>
    </label><br>

    <label>Password:
        <input type="password" name="comment_passwd" value="" required>
    </label><br>

    <label>Repeat password:
        <input type="password" name="comment_passwd2" value="" required>
    </label><br>
    <div style="font-size: 70%">
    Enter your desired user name/password and after your comment has been reviewed by an admin it will be posted and your account will be enabled. If you are already registered please <a href="/_users/login">login</a> before posting.
    </div>
%   }
%   if not if(~ $#bridge_anon_comments 1) {
<!--    <label>User name for post:
        <input type="text" name="comment_user" value="%($"post_arg_comment_user%)" required>
    </label><br>
-->
    <label>If you take the day of October 27th, use it as the number 27 and added 12, what number do you get?
        <input type='text' name='ima_robot' required />
    </label>
    <input type='text' name='definitely_important_field' class='definitely_important_field' >
%   }
% }
</form>
