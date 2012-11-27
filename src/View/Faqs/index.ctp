<?php
$this->set("page", "faqs");
?>
<div class="faqs index">
    <h2><?php echo __('Faqs'); ?></h2>
    <ul>
        <?php foreach ($faqs as $faq) { ?>
            <li>
                <?php echo $this->Html->link(h($faq['Faq']['pregunta']), array('action' => 'view', $faq['Faq']['id'])); ?>
            </li>
        <?php } ?>
    </ul>
    <p>
        <?php
        echo $this->Paginator->counter(array(
            'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
        ));
        ?>	
    </p>

    <div class="paging">
        <?php
        echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
        echo $this->Paginator->numbers(array('separator' => ''));
        echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
        ?>
    </div>
    <img src="/faqs/qr"/>
</div>

