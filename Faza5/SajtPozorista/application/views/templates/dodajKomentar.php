<div class="container">

    <div class="row">

        <div class="col-lg-12">
            <h2 class="page-header">Unesite komentar</h2>
        </div>

    </div>

    <br/>

    <div class="row">

        <?php echo validation_errors(); ?>

        <?php echo form_open('predstave/dodajKomentar', '', array('PredID' => $PredID)) ?>
        <div class="form-group">
            <label for="sadrzaj">Tekst <font color="red"> * </font></label>
            <textarea class="form-control" id="tekst" name="tekst" rows="5"></textarea>
        </div>
        <input type="submit" value="Dodaj" name="button" id="dodajKomentar" class="button"/>
        <?php echo form_close() ?>

    </div>
</div>
<div class="container">