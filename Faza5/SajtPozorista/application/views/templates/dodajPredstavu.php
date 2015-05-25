<div class="container">
    <div class="section">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Dodaj predstavu</h1>
            </div>

        </div>

        <br/>

        <div class="row">

            <?php echo validation_errors(); ?>
			
			<?php
            if (isset($error)) {
                echo "<div>$error</div>";
            }
            ?>
			
            <?php echo form_open_multipart('predstave/dodajPredstavu') ?>
            <div class="form-group">
				<label for="naziv">Naziv*</label>
				<input type="text" class="form-control" name="naziv" id="naziv" placeholder="unesite naziv" value="<?php echo set_value('naziv'); ?>">
			  </div>
			  <div class="form-group">
				<label for="pozID">Pozorište*</label>
				<select id="pozID" name="pozID" class="form-control">
				    <?php
    				    for($i=0; $i<sizeof($pozorista);$i++){
    				        echo '<option value="'.$pozorista[$i]['PozID'].'">'.$pozorista[$i]['Naziv'].'</option>';
    				    }
				    ?>
				</select>
			  </div>
			  <div class="form-group">
				<label for="glumci">Glumci</label>
				<textarea class="form-control" id="glumci" name="glumci" rows="3" placeholder="unesite imena glumaca"><?php echo set_value('glumci'); ?></textarea>
			  </div>
			  <div class="form-group">
				<label for="reziser">Režiser</label>
				<input type="text" class="form-control" id="reziser" name="reziser" placeholder="unesite režisera" value="<?php echo set_value('reziser'); ?>">
			  </div>
			  <div class="form-group">
				<label for="slika">Slika</label>
				<input type="file" id="slika" name="slika">
			  </div>
            <input type="submit" value="Dodaj" name="button" id="dodajPredstavu" class="button"/>
            <?php echo form_close() ?>

        </div>
    </div>
</div>