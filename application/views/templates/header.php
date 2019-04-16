<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-5">
		<a class="navbar-brand" href="<?php echo base_url(); ?>">Website</a>
		
		<ul class="navbar-nav mr-auto">
			<?php 
				foreach($categories as $category) {
					?>
						<li class="nav-item"><a href="<?php echo site_url('/articles/articles_category_view/'. $category['id']); ?>" class="nav-link"><?php echo $category['name']; ?></a></li>
					<?php
				}
			?>					
		</ul>
		<ul class="nav navbar-nav ml-auto">
			<?php 
				if(!$this->session->userdata('logged_in')) {
					?>
						<li class="nav-item"><a href="<?php echo base_url(); ?>users/login" class="nav-link">Login</a></li>
						<li class="nav-item"><a href="<?php echo base_url(); ?>users/register" class="nav-link">Register</a></li>
					<?php
				}
				?>
			<?php 
				if($this->session->userdata('logged_in')) {
					?>
						<li class="nav-item"><a href="<?php echo base_url(); ?>users/logout" class="nav-link">Logout</a></li>
					<?php
				}
				?>
		</ul>	
	</nav>

	<div class="container">
		<?php 
			if($this->session->flashdata('user_registered')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('user_registered') .'</p>';
			}

			if($this->session->flashdata('comment_created')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('comment_created') .'</p>';
			}

			if($this->session->flashdata('comment_deleted')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('comment_deleted') .'</p>';
			}

			if($this->session->flashdata('user_loggedin')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('user_loggedin') .'</p>';
			}

			if($this->session->flashdata('login_failed')) {
				echo '<p class="alert alert-danger">'. $this->session->flashdata('login_failed') .'</p>';
			}

			if($this->session->flashdata('user_loggedout')) {
				echo '<p class="alert alert-danger">'. $this->session->flashdata('user_loggedout') .'</p>';
			}
