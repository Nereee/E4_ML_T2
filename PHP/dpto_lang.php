<?php

/* Departamentu bateko langileak erakusteko*/

   $arauak = new DOMDocument();
   $arauak ->load("../XML/dpto_lang.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/datuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("",'id',$_GET['id']);

   echo $proc->transformToXML($datuak);


?>
