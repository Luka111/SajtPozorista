<div class="container">
    <div class="section">
        <div class="row ">

            <div class="col-lg-12">
                <h1 class="page-header"><?php echo $kritika['Naslov']; ?>
                    <?php
                    if ((checkPermission(array('admin'), $Role)) || $Username === $kritika['Username']) {
                        echo '<a href="' . route_url('predstave/obrisiKritiku/') . $kritika['KritID'] . '/' . $kritika['Username'] . '/' . $PredID . '"><button type="button" class="btn btn-lg btn-danger">Obriši</button></a> ';
                        echo '<a href="' . route_url('predstave/izmeniKritiku/') . $kritika['KritID'] . '/' . $kritika['Username'] . '/' . $PredID . '"><button type="button" class="btn btn-lg btn-success">Izmeni</button></a>';
                    }
                    ?>
                </h1>
            </div>

        </div>
        <div class="row">

            <div class="col-lg-12">

            </div>

        </div>
        <br>

        <div class="row">
            <div class="col-md-8 text-justify portfolio-item">
                <?php echo '<h3>' . $kritika['Sadrzaj'] . '<h3/>'; ?>

            </div>

        </div>
    </div>