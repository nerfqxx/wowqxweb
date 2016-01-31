<?php
$bucle_mant = 'true';
require_once("configs.php");
?>
<!DOCTYPE html>
<html lang="en-us">
<head>
<title><?php echo TITLE ?></title>
<!--[if IE]>
<meta content="false" http-equiv="imagetoolbar" />
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible" />
<![endif]-->
<meta name="robots" content="none" />
<meta http-equiv="refresh" content="120" />
<meta name="description" content="<?php echo DESCRIPTION ?>">
<meta name="keywords" content="<?php echo KEYWORDS ?>">
<link rel="shortcut icon" href="wow/static/local-common/images/favicons/wow.png" type="image/x-icon" />
<!--[if LT IE 9]>
<link rel="shortcut icon" type="image/x-icon" href="images/root.ico" />
<![endif]-->
<link rel="stylesheet" href="wow/static/css/error/error.css"/>
<!--[if LT IE 9]>
<style>
.info .twitter { background-image: url("images/twitter.png"); }
.footer .copyright { zoom: 1; float: left; }
.footer .legal { zoom: 1; float: left; }
.footer .legal a { zoom: 1; float: left; padding: 0 1em 0 0; }
.footer .language { zoom: 1; white-space: normal; }
.footer .blizzard { zoom: 1; float: left; }
.footer .privacy { zoom: 1; }
.footer .privacy a { zoom: 1; }
body.zh-cn .notice .logo span { background-image: url("images//bnet-default-cn.gif"); }
body.zh-cn .info .twitter { background-image: url("/static/maintenance/wow/images/twitter-cn.png"); }
</style>
<![endif]-->
</head>
<body class="en-us">
<div class="wrapper">
<!-- US -->
<div class="notice" id="en-us:notice">
<h1 class="logo"><span><?php echo TITLE ?></span></h1>
<div class="info">
<h2 class="title"><?php echo $mantenimiento001['mante001']; ?></h2>
<p class="short"><?php echo $mantenimiento002['mante002']; ?></p>
<div class="twitter"><?php echo $mantenimiento003['mante003']; ?> <a tabindex="1" target="_blank" href="http://www.twitter.com">@<?php echo TITLE ?></a> <?php echo $mantenimiento004['mante004']; ?> Twitter.
</div>
</div>
</div>
<div class="footer" id="en-us:footer"><center>
<small><?php echo $copyright3['copyright3']; ?>.<br /><?php echo $copyright['copyright'];  echo $website['title']; ?>.<br /><?php echo $copyright4['copyright4']; ?></small><a height="46" width="190">
<p><br><img src="<?php echo BASE_URL ?>wow/static/images/logos/wof-logo-small.png" height="75" width="300" /></center></a></p>
<span class="language"><?php echo $mantenimiento005['mante005']; ?></span><br>
</div></div>
</body>
</html>
