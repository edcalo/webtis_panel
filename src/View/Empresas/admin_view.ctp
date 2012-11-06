<div class="empresas view">
<h2><?php  echo __('Empresa'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($empresa['Empresa']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre Empresa'); ?></dt>
		<dd>
			<?php echo h($empresa['Empresa']['nombre_empresa']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Sigla'); ?></dt>
		<dd>
			<?php echo h($empresa['Empresa']['sigla']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Logo'); ?></dt>
		<dd>
			<?php echo h($empresa['Empresa']['logo']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Email Contacto'); ?></dt>
		<dd>
			<?php echo h($empresa['Empresa']['email_contacto']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fecha Registro'); ?></dt>
		<dd>
			<?php echo h($empresa['Empresa']['fecha_registro']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Empresa'), array('action' => 'edit', $empresa['Empresa']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Empresa'), array('action' => 'delete', $empresa['Empresa']['id']), null, __('Are you sure you want to delete # %s?', $empresa['Empresa']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Empresas'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Empresa'), array('action' => 'add')); ?> </li>
	</ul>
</div>
