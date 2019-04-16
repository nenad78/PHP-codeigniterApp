<h3><?php echo $article['title']; ?></h3>
<img src="<?php echo base_url(); ?>/assets/images/articles/<?php echo $article['image']; ?>"><br><br>
<p><?php echo $article['text']; ?></p>
<hr>
<?php 
	if($this->session->userdata('user_status') == 4) {
		?>
			<a class="btn btn-danger" href="<?php echo site_url('/admin/delete_article/'. $article['id']); ?>">Delete</a>
		<?php
	}
?>
<hr>
<h3>Comments</h3>
<?php
	if($comments) {
		foreach($comments as $comment) {
			?>
				<div class="well">
					<?php echo form_open('admin/delete_comment/'. $comment['id']); ?>
						<input type="hidden" name="article_id" value="<?php echo $article['id']; ?>">
						<?php
							if($this->session->userdata('user_status') == 4) {
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

<?php 
	if($this->session->userdata('user_status') == 4) {
		?>
			<h3>Add comment</h3>
			<?php echo form_open('admin/create_comment/'. $article['id']); ?>
				<div class="form-group">
					<label>Name</label>
					<input type="text" name="name" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Email</label>
					<input type="text" name="email" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Comment</label>
					<textarea class="form-control" name="comment" required></textarea>
				</div>
				<button class="btn btn-primary" type="submit">Submit</button>
			<?php echo form_close(); ?>
		<?php
	}