<div class="empresas form">
<?php echo $this->Form->create('Empresa'); ?>
	<fieldset>
		<legend><?php echo __('Edit Empresa'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('nombre_empresa');
		echo $this->Form->input('sigla');
		echo $this->Form->input('logo');
		echo $this->Form->input('email_contacto');
		echo $this->Form->input('fecha_registro');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Empresa.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Empresa.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Empresas'), array('action' => 'index')); ?></li>
	</ul>
</div>
