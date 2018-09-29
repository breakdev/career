<?php $this->load->view('template/header');?>
<!-- contact -->
<div class="contact">
	<div class="container">
		<div class="contact-form agileits-w3layouts">
			<?php if($id_position != null){ ?>
			<h4>Job Desc</h4>
			<p><?php echo $description ?></p>
			<br>
			<br>
			<h4>Qualifications</h4>
			<p><?php echo $requirement ?></p>
			<br>
			<br>
			<h4>Apply Form</h4>
			<form action="<?php echo $action; ?>" enctype="multipart/form-data" method="post">
				<input type="hidden" name="id_contact" value="">
				<input type="hidden" name="date" value="<?php echo tanggalx();?>">
				<input type="text" name="nama" placeholder="Name" required>
				<input type="email" name="email" placeholder="Email" required>
				<input type="text" name="hp" placeholder="Telephone" required>

				Upload CV : <br>
				<input type="file" name="cv">
				<?php echo $error;?>
				<br>
				<br>
				<textarea placeholder="Reason why choose this job" name="feed" required></textarea>
				<input class="btn1 btn-1 btn-1b w3-agile" type="submit" value="upload" />
			</form>
			<?php } else {?>
				Null
				<?php }?>
		</div>	
	</div>
</div>
<!-- //contact -->
<?php $this->load->view('template/footer');?>


