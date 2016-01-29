<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Dashboard</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
<div class="panel panel-default">
	<div class="panel-heading">
		<i class="fa fa-bar-chart-o fa-fw"></i> Ajout d'une eglise
	</div>
	<div class="panel-body">			
		<form role="form" class="form-horizontal">		
			<div class="form-group has-error">
				<label for="nom" class="col-lg-2 col-md-2 col-sm-2 control-label">Nom</label>
				
				<div class="col-lg-4 col-sm-6 col-md-4">
					<input id="nom" type="text" class="form-control"/>
				</div>
				<div class="col-lg-4 col-sm-4 col-md-4">
					<p class="help-block">Entrer les noms de l'exemple</p>
				</div>
				
			</div>
			<?php 
			
				echo form_input(array('name'=>'nom_eveque','placeholder'=>'Entrer le nom'),'','Prenom de l eveque');
			?>
			
		</form>
	</div>
</div>