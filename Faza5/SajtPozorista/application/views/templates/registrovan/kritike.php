<div class="container">
    <div class="section">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Kritike</h1>
            </div>

        </div>
   <!--     <div class="row">

            <div class="col-lg-12">
                <a href="<?//php echo route_url('kritike/dodaj')?>"><button type="button" class="btn btn-lg btn-primary">Dodaj</button></a>
            </div>

        </div>
    -->
        <?php
        for ($i = 0; $i < sizeof($kritike); $i++) {
            if ($i % 3 === 0) {
                if ($i !== 0) {
                    echo '</div><br/>';
                }
                echo '<div class="row">';
            }
            echo '<div class="col-md-4 portfolio-item">';
            echo '<a href="' . route_url('kritike/kritika/') . $kritike[$i]['KritID'] . '">';
            echo '<img class="img-responsive" src="' . asset_url('img/750x450.gif') . '">';
            echo '<h3>' . $kritike[$i]['Naslov'] . '</h3>';
            echo '</a>';
            echo '</div>';
        }
        if ($i > 0) {
            echo '</div>';
        }
        ?>

    </div>
</div>