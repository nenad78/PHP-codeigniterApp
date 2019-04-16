<h2><?php echo $article['title']; ?></h2>
<img src="<?php echo base_url(); ?>/assets/images/articles/<?php echo $article['image']; ?>"><br><br>
<p><?php echo $article['text']; ?></p>
<small style="background: lightgrey; padding: 4px; margin: 3px 0 3px 0; display: block;">Posted on: <?php echo $article['created_at']; ?></small>
<hr>

<h3>Comments</h3>

<?php
	if($comments) {
		foreach($comments as $comment) {
			?>
				<div class="well">
					<small style="background: lightgrey; padding: 4px; margin: 3px 0 3px 0; display: block;">Posted on: <?php echo $comment['created_at']; ?></small>
					<?php echo form_open('/comments/delete/'. $comment['id']); ?>
						<input type="hidden" name="article_id" value="<?php echo $article['id']; ?>">
						<?php 
							if($this->session->userdata('user_id') == $comment['user_id']) {
								?>
									<button class="btn btn-danger pull-right">Delete</button>
								<?php 
							}
						?>
					<?php echo form_close(); ?>
					<h5><?php echo $comment['comment']; ?> [ by <strong><?php echo $comment['name']; ?></strong>]</h5>
				</div>
			<?php
		}
	} else {
		echo 'No comments to display';
	}
?>

<hr>

<h3>Add Comment</h3>

<?php echo validation_errors(); ?>

<?php echo form_open('comments/create/'. $article['id']); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control">
	</div>
	<div class="form-group">
		<label>Comment</label>
		<textarea class="form-control" name="comment"></textarea>
	</div> 
	<button class="btn btn-primary" type="submit">Submit</button>
<?php echo form_close(); ?>