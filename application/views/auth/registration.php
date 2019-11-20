<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<?= base_url('assets/'); ?>img/img-01.png" alt="IMG">
				</div>
                <div class="row">
                        <div class="col-lg">
                            <div class="m-5">
                              
                <?= $this->session->flashdata('message'); ?>
				<form class="user" method="post" action="<?=base_url('auth/registration');?>">
					<span class="login100-form-title">
						Daftar Tamu
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="name" id="name"  placeholder="Nama Lengkap..." value="<?= set_value('name'); ?>">
                        <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>

					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="email" name="email"  id="email"  placeholder="email..." value="<?= set_value('email'); ?>">
                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
					</div>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="password1"  id="passowrd1"  placeholder="Masukan Password..." value="<?= set_value('passowrd1'); ?>">
                        <?= form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
					</div>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="password2"  id="password2"  placeholder="Konfirmasi Password">
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Daftar Akun
						</button>
					            </div>
                                <a class="btn btn-success btn-user btn-block mt-5" href="<?= base_url('auth/login')?>">Sudah Punya Akun? Login!</a>
                                </div>
                              </div>
                              </div>
				</form>
			</div>
		</div>
	</div>
    <!-- Outer Row -->