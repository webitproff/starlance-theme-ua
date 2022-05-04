<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns="http://www.w3.org/1999/xhtml"  lang="ru-RU">
<head>
<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{HEADER_TITLE}</title> 
<!-- IF {HEADER_META_DESCRIPTION} -->
<meta name="description" content="{HEADER_META_DESCRIPTION}" />
<!-- ENDIF -->
<!-- IF {HEADER_META_KEYWORDS} -->
<meta name="keywords" content="{HEADER_META_KEYWORDS}" />
<!-- ENDIF -->
<!-- IF {PHP.out.opengraph} -->{PHP.out.opengraph}<!-- ENDIF -->
<!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.14.1/dist/css/uikit.min.css" />
<link rel="stylesheet" href="https://unpkg.com/@tabler/icons@latest/iconfont/tabler-icons.min.css">
<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.1/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.1/dist/js/uikit-icons.min.js"></script>
<!-- <script src="https://unpkg.com/@tabler/icons@latest/icons-react/dist/index.umd.min.js"></script> -->
	
<meta name="generator" content="Cotonti http://www.cotonti.com" />
<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
        {HEADER_BASEHREF}
		{HEADER_HEAD}	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap" rel="stylesheet"> 	
		{HEADER_BOXES_HEADMETA}
		{HEADER_BOXES_SPEEDUP}
		{HEADER_BOXES_CSS}
		{HEADER_BOXES_EXTERNAL_JSCSS}
<link rel="apple-touch-icon" href="/apple-icon.png">
<link rel="icon" type="image/png" href="/android-icon-96x96.png">
<link rel="icon" type="image/png" href="/favicon-96x96.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-150x150.png">
<meta name="theme-color" content="#ffffff">
</head>

<body>
<!-- BEGIN: GUEST -->
{FILE "themes/{PHP.theme}/inc/header.guest.tpl"}
<!-- END: GUEST -->

<!-- BEGIN: USER -->
<!-- IF !{PHP.usr.maingrp} == 4 AND !{PHP.usr.maingrp} == 7 -->
<!-- IF {PHP.usr.maingrp} == 5 -->
{FILE "themes/{PHP.theme}/inc/header.usr.maingrp.5.tpl"}
<!-- ENDIF -->
<!-- ENDIF -->
<!-- IF !{PHP.usr.maingrp} == 5 AND !{PHP.usr.maingrp} == 7 -->
<!-- IF {PHP.usr.maingrp} === 4 -->
{FILE "themes/{PHP.theme}/inc/header.usr.maingrp.4.tpl"}
<!-- ENDIF -->
<!-- ENDIF --> 
<!-- IF !{PHP.usr.maingrp} == 5 AND !{PHP.usr.maingrp} == 4 -->
<!-- IF {PHP.usr.maingrp} === 7 -->
{FILE "themes/{PHP.theme}/inc/header.usr.maingrp.7.tpl"}
<!-- ENDIF -->
<!-- ENDIF -->  
<!-- END: USER -->
		
<!-- END: HEADER -->
