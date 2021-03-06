<!DOCTYPE html>
<html>
<head>
    <title>{$GLOBAL.website.title} | {$smarty.request.page|escape|default:"home"|capitalize}</title>
    <link href="{$PATH}/css/application.min.css" rel="stylesheet">
    <link href="{$PATH}/css/moar.css" rel="stylesheet">
    <link rel="shortcut icon" href="{$PATH}/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="{$PATH}/img/favicon.ico" type="image/x-icon">	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="utf-8">

    <link rel="stylesheet" href="{$PATH}/css/animation.css">
    <!--[if IE 7]><link rel="stylesheet" href="css/fontello-ie7.css"><![endif]-->
    <link rel="stylesheet" href="{$PATH}/css/visualize.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="{$PATH}/css/custom.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="{$PATH}/css/bootstrap-switch.min.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="{$PATH}/css/jquery.jqplot.min.css" type="text/css" media="screen" />
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="{$PATH}/css/ie.css" type="text/css" media="screen" />
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- jquery and friends -->
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery-migrate/1.2.1/jquery-migrate.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="{$PATH}/js/hideshow.js" type="text/javascript"></script>
    <script type="text/javascript" src="{$PATH}/js/jquery.visualize.js"></script>
    <script type="text/javascript" src="{$PATH}/js/jquery.jqplot.min.js"></script>
    <script type="text/javascript" src="{$PATH}/js/jquery.tablesorter.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="{$PATH}/js/jquery.tablesorter.pager.js" type="text/javascript"></script>
    <script type="text/javascript" src="{$PATH}/js/jquery.equalHeight.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
    <script type="text/javascript" src="{$PATH}/js/justgage.1.0.1.min.js"></script>
    <script type="text/javascript" src="{$PATH}/js/custom.js"></script>

      <!-- jquery plugins -->
    <script src="{$PATH}/lib/icheck.js/jquery.icheck.js"></script>
    <script src="{$PATH}/js/bootstrap-switch.min.js"></script>
    <script src="{$PATH}/lib/sparkline/jquery.sparkline.js"></script>
    <script src="{$PATH}/lib/jquery-ui-1.10.3.custom.js"></script>
    <script src="{$PATH}/lib/jquery.slimscroll.js"></script>


    <!-- d3, nvd3-->
    <!-- <script src="{$PATH}/lib/nvd3/lib/d3.v2.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/nv.d3.custom.js"></script> -->

    <!-- nvd3 models -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/scatter.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/axis.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/legend.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/multiBar.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/multiBarChart.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/line.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/src/models/lineChart.js"></script> -->
    <!-- <script src="{$PATH}/lib/nvd3/stream_layers.js"></script> -->

    <!-- rickshaw -->
    <!-- <script src="{$PATH}/lib/rickshaw/rickshaw.js"></script> -->
    <!-- <script src="{$PATH}/lib/rickshaw/rickshaw&#45;extensions.js"></script> -->

    <!--backbone and friends -->
    <script src="{$PATH}/lib/backbone/underscore-min.js"></script>
    <script src="{$PATH}/lib/backbone/backbone-min.js"></script>
    <script src="{$PATH}/lib/backbone/backbone.localStorage-min.js"></script>

    <!-- bootstrap default plugins -->
    <script src="{$PATH}/lib/bootstrap/transition.js"></script>
    <script src="{$PATH}/lib/bootstrap/collapse.js"></script>
    <script src="{$PATH}/lib/bootstrap/alert.js"></script>
    <script src="{$PATH}/lib/bootstrap/tooltip.js"></script>
    <script src="{$PATH}/lib/bootstrap/popover.js"></script>
    <script src="{$PATH}/lib/bootstrap/button.js"></script>
    <script src="{$PATH}/lib/bootstrap/tab.js"> </script>
    <script src="{$PATH}/lib/bootstrap/dropdown.js"></script>

    <!-- basic application js-->
    <script src="{$PATH}/js/app.js"></script>
    <script src="{$PATH}/js/settings.js"></script>

    <!-- page specific -->
    <!-- <script src="{$PATH}/js/index.js"></script> -->
    <!-- <script src="{$PATH}/js/realtime.js"></script> -->
    <!-- <script src="{$PATH}/js/chat.js"></script> -->

    {if $GLOBAL.statistics.analytics.enabled}
      {$GLOBAL.statistics.analytics.code}
    {/if}
</head>

<body class="background-dark">
  <div class="logo">
    <h4><a href="/"><img src="{$PATH}/img/logo.png" width="60"> Chunky <strong>Pools</strong></a></h4>
    <!-- <h4><a href="/"><img src="https://i.imgur.com/8sAPFgb.png" width="60"> Chunky <strong>Pools</strong></a></h4> -->
  </div>

  {include file="global/navigation.tpl"}

  <div class="wrap">
    {include file="global/header.tpl"}

    <div class="content container">
      {include file="global/popup.tpl"}

      {if $CONTENT != "empty" or $CONTENT != ""}{if file_exists($smarty.current_dir|cat:"/$PAGE/$ACTION/$CONTENT")}{include file="$PAGE/$ACTION/$CONTENT"}{else}Missing template for this page{/if}{/if}
    </div>

  </div>
</body>
</html>
