<?php $this->load->view('template/header');?>
<!-- contact -->
<div class="contact">
	<div class="container">
		<div class="contact-form agileits-w3layouts">
			<h4>Apply Form</h4>
			<form action="<?php echo site_url('Kontak/tambah_aksi');?>" method="post">
				<input type="hidden" name="id_contact" value="">
				<input type="hidden" name="date" value="<?php echo tanggalx();?>">
				<input type="text" name="nama" placeholder="Name" required>
				<input type="email" name="email" placeholder="Email" required>
				<input type="text" name="hp" placeholder="Telephone" required>
				Upload CV : <br><br>
				<input type="file" name="cv">
				<br>
				<br>
				<textarea placeholder="Reason why choose this job" name="feed" required></textarea>
				<button class="btn1 btn-1 btn-1b w3-agile">Submit</button>
			</form>
		</div>	
	</div>
</div>
<!-- //contact -->
<?php $this->load->view('template/footer');?>


