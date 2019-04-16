<h2><?php echo $title; ?></h2>
<hr>

<?php echo form_open_multipart('admin/post_article'); ?>
	<div class="form-group">
		<label>Title</label>
		<input type="text" name="title" class="form-control" placeholder="Add Title" autofocus>
	</div>
	<div class="form-group">
		<label>Sub Title</label>
		<input type="text" name="sub_title" class="form-control" placeholder="Add Sub Title">
	</div>
	<div class="form-group">
		<label>Text</label>
		<textarea name="text" class="form-control" placeholder="Add Text"></textarea>
	</div>
	<div class="form-group">
		<label>Category</label>
		<select class="form-control" name="category_id">
			<?php
				foreach($categories as $category) {
					?>
						<option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
					<?php
				}
			?>
		</select>
	</div>
	<div class="form-group">
		<label>Upload Image</label>
		<input type="file" name="userfile" size="20"><br><br>
	</div>	
	<button class="btn btn-primary">Submit</button>
<?php echo form_close(); ?>