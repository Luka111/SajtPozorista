<div class = "container" >
    <div class="section">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header"><?php echo $predstava['Naziv']; ?></h1>
            </div>

        </div>
        <br>
        <div class="row">
            <div class="col-md-6 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="<?php echo display_image('predstave', $predstava['Slika'], '750x450.gif') ?>">
                </a>
            </div>
            <div class="col-md-6">

                <h3><b>Glumci</b>: <?php echo $predstava['Glumci']; ?></h3>
                <h3><b>Reziser</b>: <?php echo $predstava['Reziser']; ?></h3>
                <h3><b>Pozoriste</b>: <?php echo $predstava['PozID'] . 'TODO JOIN!'; ?></h3>
                
            </div>

        </div>
        <br>

        <hr>

    </div>
</div>
<div class="container">