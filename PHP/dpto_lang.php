<?php

/* Departamentu bateko langileak erakusteko*/

   $arauak = new DOMDocument();
   $arauak ->load("dpto_lang.xsl");

   $datuak = new DOMDocument();
   $datuak->load("datuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("",'id_depto',$_GET['id_depto']);

   echo $proc->transformToXML($datuak);


?>
