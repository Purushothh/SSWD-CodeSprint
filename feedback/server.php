<?php
session_start();

// initializing variables
$message = "";
$rating    = "";
$errors = array();

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'registration');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $message = mysqli_real_escape_string($db, $_POST['username']);
  $rating = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($message)) { array_push($errors, "Message is required"); }
  if (empty($rating)) { array_push($errors, "Rating is required"); }



  // first check the database to make sure
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE message='$message' OR rating='$rating' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);


  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {

  	$query = "INSERT INTO users (message,rating)
  			  VALUES('$message','$rating')";
  	mysqli_query($db, $query);
  	$_SESSION['$message'] = $message;
  	$_SESSION['$rating'] = "You are now logged in";
  	header('location: index.php');
  }
}

if (isset($_POST['login_user'])) {
  $message = mysqli_real_escape_string($db, $_POST['message']);
  $rating = mysqli_real_escape_string($db, $_POST['rating']);

  if (empty($username)) {
  	array_push($errors, "Username is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
  	$password = md5($password);
  	$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
  	  $_SESSION['success'] = "You are now logged in";
  	  header('location: index.php');
  	}else {
  		array_push($errors, "Wrong username/password combination");
  	}
  }
}

?>