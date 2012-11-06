<?php
$this->set("page", "faqs");
?>
<div class="faqs view">
    <h2><?php echo h($faq['Faq']['pregunta']); ?></h2>
    <div>
        <?php echo h($faq['Faq']['respuesta']); ?>
    </div>
</div>

