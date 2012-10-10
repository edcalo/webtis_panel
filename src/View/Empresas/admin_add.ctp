<div class="empresas form">
<?php echo $this->Form->create('Empresa');?>
	<fieldset>
		<legend><?php echo __('Admin Add Empresa'); ?></legend>
	<?php
		echo $this->Form->input('nombre_empresa');
		echo $this->Form->input('sigla');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit'));?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Empresas'), array('action' => 'index'));?></li>
	</ul>
</div>
