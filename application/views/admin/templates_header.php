<!DOCTYPE html>
<html>
<head>
	<title>Codeigniter</title>
	<link rel="stylesheet" type="text/css" href="https://bootswatch.com/flatly/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="<?php echo base_url(); ?>admin/view">Administrator Page</a>
			</div>
			<div id="navbar">
				<ul class="nav navbar-nav">
				<?php 
					if($this->session->userdata('user_status') == 4) {
						?>
							<li><a href="<?php echo base_url(); ?>admin/create_article">Create Articles</a></li>
						<?php
					}
					?>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<?php
					if($this->session->userdata('logged_in')) {
						?>
							<li><a href="<?php echo base_url(); ?>admin/logout">Logout</a></li>
					<?php
					}
				?>
				</ul>
			</div>
		</div>		
	</nav>
	<div class="container">
		<?php
			if($this->session->flashdata('admin_loggedin')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('admin_loggedin') .'</p>';
			}

			if($this->session->flashdata('login_failed')) {
				echo '<p class="alert alert-danger">'. $this->session->flashdata('login_failed') .'</p>';
			}			

			if($this->session->flashdata('admin_loggedout')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('admin_loggedout') .'</p>';
			}

			if($this->session->flashdata('article_created')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('article_created') .'</p>';
			}

			if($this->session->flashdata('article_deleted')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('article_deleted') .'</p>';
			}

			if($this->session->flashdata('comment_created')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('comment_created') .'</p>';
			}

			if($this->session->flashdata('comment_deleted')) {
				echo '<p class="alert alert-success">'. $this->session->flashdata('comment_deleted') .'</p>';
			}
		?>