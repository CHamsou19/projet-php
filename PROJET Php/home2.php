

<!DOCTYPE html>
<html>
<head>
	<title>Gym Magement System</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
  <link rel="stylesheet" href="style.css"> 
</head>

<body style="background:url(gym_bg.jpg);">
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<div class="container-fluid">
  <a class="navbar-brand" href="home.php">GYM MANAGEMENT SYSTEM</a>
  <a href="logout.php" class=" nav nav-link">log out</a>
</div>
</nav>

<div class="row mt-3">
  <div class="col-2">
    <div id="accordion">
    <div class="list-group">
      <div class="list-group-item bg-dark">
        <a class="collapsed nav-link text-light" data-toggle="collapse" href="#collapseTwo">
        <i class="fas fa-user-alt"></i>  GYM</a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
          <div class="list-group-item" style="background-color: #303030;"><a href="home2.php?info=manage_gym" class="text-light">VIEW GYMS</a></div>
        </div>
   
         <div class="list-group-item bg-dark">
        <a class="collapsed nav-link text-light" data-toggle="collapse" href="#collapsefive">
        <i class="fas fa-book"></i>  MEMBERS</a>
      </div>
      <div id="collapsefive" class="collapse" data-parent="#accordion">
          <div class="list-group-item" style="background-color: #303030;"><a href="home2.php?info=add_member" class="text-light">ADD MEMBER</a></div>
          <div class="list-group-item" style="background-color: #303030;"><a href="home.php?info=manage_member" class="text-light">MY ACCOUNT</a></div>
        
        </div>
         <div class="list-group-item bg-dark">
        <a class="collapsed nav-link text-light" data-toggle="collapse" href="#collapsesix">
        <i class="fas fa-users"></i> TRAINERS</a>
      </div>
      <div id="collapsesix" class="collapse" data-parent="#accordion">
          <div class="list-group-item" style="background-color: #303030;"><a href="home2.php?info=manage_trainer" class="text-light">VIEW TRAINERS</a></div>
        </div>
    </div>
</div>
  </div>
  <div class="col-10">
<?php
@$info=$_GET['info'];
if ($info!=="") {
  
            if ($info=="add_member") {
               include ('add_member.php');
             }
            elseif ($info=="My_account") {
               include ('My_account.php');
             }elseif ($info=="manage_gym") {
               include ('manage_gym.php');
             }elseif ($info=="member_search") {
              include ('member_search.php');
            }
             }
?>

</div>
</div>

</body>
</html>