<form role="form" action="<?php echo base_url(); ?>index.php/home/insertCountry" method="post">
  <div class="form-group">
    <label for="ejemplo_email_1">Nombre del País</label>
    <input type="text" class="form-control" id="ejemplo_email_1"
           placeholder="Introduce el nombre del país" name="name" required>
  </div>
  <div class="form-group">
    <label for="ejemplo_archivo_1">Bandera</label>
    <input type="file" id="ejemplo_archivo_1" name="flag" required>
    <p class="help-block">Selecciona una imagen de la bandera del país</p>
  </div>
  <button type="submit" class="btn btn-default">Enviar</button>
</form>

<?php





?>