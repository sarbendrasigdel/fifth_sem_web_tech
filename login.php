
<?php
$username = $password = '';

if(isset($_POST['login'])){
    $error = [];
if(isset($_POST['username'])&& !empty($_POST['username']))
{
    echo 'username is '. $_POST['username'];
}
else{
    $error['username']='enter username';
}

if(isset($_POST['password'])&& !empty($_POST['password']))
{
    echo 'password is '. $_POST['password'];
}
else
{
    $error['password']='enter password';
}

}




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>
<body>

<form action="" method="post">
 <label for="username">username</label>
 <input type="text" id="username" placeholder="enter username" name="username">
<br>
<label for="password">password</label>
<input type="password" id="password" placeholder="enter your password" name="password">
<br>
<input type="submit" value="login" name="login">

</form>    
</body>
</html>