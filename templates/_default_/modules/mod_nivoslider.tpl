{if $is_photo}
<link rel="stylesheet" type="text/css" href="/modules/mod_nivoslider/css/nivo-slider.css" />
<link rel="stylesheet" type="text/css" href="/modules/mod_nivoslider/themes/vtbb/vtbb.css" />
<script type="text/javascript" src="/modules/mod_nivoslider/js/jquery.nivo.slider.pack.js"></script>

<div class="slider-wrapper theme-vtbb">
    <div id="slider" class="nivoSlider">
        {foreach key=tid item=con from=$photos name=foo}
            <img src="/images/photos/medium/{$con.file}" alt="{$con.title|escape:'html'}" title="#htmlcaption{$smarty.foreach.foo.index}" />
        {/foreach}
    </div>
</div>
{foreach key=tid item=con from=$photos name=foo}
<div id="htmlcaption{$smarty.foreach.foo.index}" class="nivo-html-caption">
    <span class="nivo-slide-title">{$con.title|escape:'html'}</span>
    <span class="nivo-slide-desc">
        {$con.description}
    </span>
</div>
        
{/foreach}  

{*
#пример описания для фотографии
Поставка спецтехники из Южной Кореи<br />
<a class="nivo-slide-but" href="#">
    Перейти в каталог +
</a>
*}

{literal}
<script>
$('#slider').nivoSlider({{/literal}
effect: '{$cfg.effect}',
slices: {$cfg.slices},
boxCols: {$cfg.boxCols},
boxRows: {$cfg.boxRows},
animSpeed: {$cfg.animSpeed},
pauseTime: {$cfg.pauseTime},
directionNav: {$cfg.directionNav},
directionNavHide: {$cfg.directionNavHide},
controlNav: {$cfg.controlNav},
controlNavThumbs: {$cfg.controlNavThumbs},
pauseOnHover: {$cfg.pauseOnHover},
manualAdvance: {$cfg.manualAdvance},
prevText: '{$cfg.prevText}',
nextText: '{$cfg.nextText}'
{literal}});
</script>
{/literal}
{else}
<p>Нет фотографий</p>
{/if}