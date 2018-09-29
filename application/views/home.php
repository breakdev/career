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
						<thead>
							<tr>
								<th>JOB TITLE</th>
								<th>ACCTION</th>
							</tr>
						</thead>
							<!--<tbody>
								<tr>
									<td>Welding Inspector</td>
									<td><a href="#" style="color: blue;">Apply</a></td>
								</tr>
									<td>Network Engineer</td>
									<td><a href="#" style="color: blue;">Apply</a></td>
								<tr>
								</tr>
							</tbody>-->
						<tbody>
							<?php foreach ($open_jobs as $key => $row) { ?>
							<tr>
								<td><?php echo $row->position_name; ?></td>
								<td><?php echo anchor(site_url('apply/apply_form/'.$row->id_position),
										'<i class="material-icons">Apply Now</i>',
										'<button type="button" rel="tooltip" class="btn btn-primary btn-simple btn-xs"'); ?>
							</tr>
							<?php } ?>
						</tbody>
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