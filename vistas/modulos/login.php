<div id="back"></div>

<div class="login-box">
  
  <div class="login-logo">
  <img style="margin-top:-12px"height="40"><b>Distribuidora La Red Marinera</b>

  </div>

  <div class="login-box-body">

    <p class="login-box-msg">Ingresar al sistema</p>

    <form method="post">

      <div class="form-group has-feedback">

        <input type="text" class="form-control" placeholder="Usuario" name="ingUsuario" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>

      </div>

      <div class="form-group has-feedback">

        <input type="password" class="form-control" placeholder="Contraseña" name="ingPassword" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      
      </div>

      <div class="row">
            <div class="col-xs-12">
              <input type="submit" class="btn btn-primary btn-lg btn-block btn-flat" value="Ingresar" />
              <br>
                <a href="index.php">
                  <input class="btn btn-success btn-lg btn-block btn-flat" value="Cerrar">
                </a>
              
            </div><!-- /.col -->
          </div>

      <?php

        $login = new ControladorUsuarios();
        $login -> ctrIngresoUsuario();
        
      ?>

    </form>

  </div>

</div>