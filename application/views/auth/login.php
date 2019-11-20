<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<?= base_url('assets/'); ?>img/img-01.png" alt="IMG">
				</div>
                <div class="row">
                        <div class="col-md">
                            <div class="m-5">
                <?= $this->session->flashdata('message'); ?>
				<form class="user" method="post" action="<?=base_url('auth/login');?>">
					<span class="login100-form-title">
						 Login Tamu
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="email" id="email"  placeholder="Masukan Alamat Email.." value="<?= set_value('email'); ?>">
						<?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>


					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="password"  id="password"  placeholder="Password..." alue="<?= set_value('password'); ?>">
						<?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>

					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="<?= base_url('auth/forgotpassword'); ?>">
				         Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="<?= base_url('auth/registration'); ?>">
							Buat Akun Sekarang!
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
                              </div>
                              </div>
                              </div>
				</form>
			</div>
		</div>
	</div>