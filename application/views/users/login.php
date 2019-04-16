<?php echo form_open('users/login'); ?>
    <div class="row">
        <div class="col-md-4 m-auto">
            <h1 class="text-center"><?php echo $title; ?></h1>
            <div class="form-group">
                <label>Username</label>
                <input class="form-control" type="text" name="username" placeholder="Enter Username" required autofocus>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input class="form-control" type="password" name="password" placeholder="Enter Password" required>
            </div>
            <button type=submit"" class="btn btn-primary btn-block">Log In</button>
        </div>
    </div>
<?php echo form_close(); ?>

<!-- col-md-offset-4 -->
