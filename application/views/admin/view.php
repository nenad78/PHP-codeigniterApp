<h2><?php echo $title; ?></h2>
<hr>
<div class="row">
    <?php 
        foreach($articles as $article) {
            ?>
                <div class="col-md-3">
                    <h3><?php echo $article['title']; ?></h3>
                    <img width=120 src="<?php echo site_url(); ?>/assets/images/articles/<?php echo $article['image']; ?>"><br>
                    <a href="<?php echo site_url('/admin/article_view/'. $article['id']); ?>"><?php echo $article['sub_title']; ?></a>
                    <p style="overflow: hidden;  word-wrap: break-word;"><?php echo word_limiter($article['text'], 40); ?></p>
                    <a class="btn btn-default" href="<?php echo site_url('/admin/article_view/'. $article['id']); ?>">Read More</a>
                </div>
            <?php 
        }
    ?>	
</div>