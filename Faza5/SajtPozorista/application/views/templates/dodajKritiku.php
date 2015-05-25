<div class="container">
    <div class="section">
        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Dodaj kritiku</h1>
            </div>

        </div>

        <div class="row">
            
            <?php echo validation_errors(); ?>

            <?php echo form_open('kritike/dodajKritiku') ?>
			  <div class="form-group">
				<label for="naslov">Naslov*</label>
				<input type="text" class="form-control" id="naslov" placeholder="unesite naslov" value="<?php echo set_value('naslov'); ?>">
			  </div>
			  <div class="form-group">
				<label for="tekst">Tekst*</label>
				<textarea class="form-control" id="tekst" rows="3" placeholder="unesite tekst kritike"></textarea>
			  </div>
			  <div class="form-group">
				<label for="predID">Predstava</label>
				<select id="predID" name="predID" class="form-control">
				    <?php
    				    for($i=0; $i<sizeof($predstave);$i++){
    				        echo '<option value="'.$predstave[$i]['PredID'].'">'.$predstave[$i]['Naziv'].'</option>';
    				    }
				    ?>
				</select>
			  </div>
			  <!--
			  <div class="form-group">
				<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					Izaberite Predstavu*
					<span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					<li role="presentation" class="dropdown-header">Prvo Pozorište</li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Prva Predstava</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Druga Predstava</a></li>
					<li role="presentation" class="dropdown-header">Drugo Pozorište</li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Prva Predstava</a></li>
				  </ul>
				</div>
			  </div>-->
			  <input type="submit" value="Dodaj" name="button" id="dodajKritiku" class="btn btn-default"/>
		     <?php echo form_close() ?>

        </div>

    </div>
</div>
   <!-- /.container -->