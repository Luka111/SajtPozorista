<div class="container">
	
		<div class="row ">

            <div class="col-lg-12">
                <h1 class="page-header"><?php echo $kritika['Naslov']; ?></h1>
            </div>

    </div>
		<div class="row">

            <div class="col-lg-12">
                <a href="<?php echo route_url('kritike/obrisi/'.$kritika['KritID'])?>"><button type="button" class="btn btn-lg btn-danger">Obriši</button></a>
                <a href="<?php echo route_url('kritike/izmeni/'.$kritika['KritID'])?>"><button type="button" class="btn btn-lg btn-success">Izmeni</button></a>
            </div>

        </div>
    <br>
		
		<div class="row">
		    <div class="col-md-8 text-justify portfolio-item">
			    	Sadržaj: 
				    <?php echo $kritika['sadrzaj']; ?>
					
				</div>
				<!--
			  <div class="img-responsive pull-right portfolio-item">
						<img class="img-responsive" src="../img/200x300.gif">
				</div>
				-->
		</div>

        <hr>
		
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Team &copy; PLAN 2015</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

