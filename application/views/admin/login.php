<?php echo form_open('admin/login'); ?>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h1 class="text-center"><?php echo $title; ?></h1>
            <div class="form-group">
                <label>Username</label>
                <input class="form-control" type="text" name="username" placeholder="Enter Password" required autofocus>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input class="form-control" type="password" name="password" placeholder="Enter Password" required>
            </div>
            <button type=submit"" class="btn btn-primary btn-block">Log In</button>
        </div>
    </div>
<?php echo form_close(); ?>