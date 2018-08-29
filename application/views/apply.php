<?php $this->load->view('template/header'); ?>
<div class="codes about">
	<div class="container">
		<div class="grid_3 grid_4 team-wthreegrids">
			<!--<h3 class="w3ls-hdg">Career</h3>-->
			<div class="bs-example w3layouts">
				<div class="row">
				</div>
				<div class="row">
					<table id="example" class="table table-striped table-bordered">
						
					</table>
				</div>
				<script type="text/javascript">
					$(document).ready(function(){
						$('#example').DataTable();
					});
				</script>
			</div>
		</div>
	</div>
</div>
<?php $this->load->view('template/footer'); ?>