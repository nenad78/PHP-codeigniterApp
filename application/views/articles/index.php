<h2><?php echo $title; ?></h2>
<hr>

<div class="row">
	<?php 
		foreach($articles as $article) {
			?>
				<div class="col-md-3">
					<h3><?php echo $article['title']; ?></h3>
					<img src="<?php echo base_url(); ?>/assets/images/articles/<?php echo $article['image']; ?>"><br>
					<a href="<?php echo site_url('/articles/view/'. $article['id']); ?>"><?php echo $article['sub_title']; ?></a>
					<p><?php echo word_limiter($article['text'], 20); ?></p>
					<a class="btn btn-default" href="<?php echo site_url('/articles/view/'. $article['id']); ?>">Read More &raquo;</a>
				</div>
			<?php 
		}
	?>	
	</div>
</div>
