<?php

/* Ardura zehatz bat duten langileak erakusteko*/

   $arauak = new DOMDocument();
   $arauak ->load("../XML/ardura_langile.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../XML/datuak.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("",'id',$_GET['id']);
   
   echo $proc->transformToXML($datuak);

?>
