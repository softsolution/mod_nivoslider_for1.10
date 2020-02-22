<?php
function info_module_mod_nivoslider(){
        $_module['title']         = 'Cлайдер-галлерея NivoSlider';
        $_module['name']          = 'Cлайдер-галлерея NivoSlider';
        $_module['description']   = 'Cлайдер-галлерея NivoSlider';
        $_module['link']          = 'mod_nivoslider';
        $_module['position']      = 'maintop';
        $_module['author']        = 'soft-solution.ru';
        $_module['version']       = '1.0';

        $_module['config'] = array();
        $_module['config']['shownum']='5';
        $_module['config']['album_id']='0';
        $_module['config']['effect']='random';
        //$_module['config']['width']='565';
        //$_module['config']['height']='290';
        $_module['config']['slices']='15';
        $_module['config']['boxCols']='8';
        $_module['config']['boxRows']='4';
        $_module['config']['animSpeed']='500';
        $_module['config']['pauseTime']='3000';
        $_module['config']['directionNav']='1';
        $_module['config']['directionNavHide']='1';
        $_module['config']['controlNav']='1';
        $_module['config']['controlNavThumbs']='0';
        $_module['config']['pauseOnHover']='1';
        $_module['config']['manualAdvance']='0';
        $_module['config']['prevText']='Prev';
        $_module['config']['nextText']='Next';

        return $_module;

    }

    function install_module_mod_nivoslider(){

        return true;

    }

    function upgrade_module_mod_nivoslider(){

        return true;

    }

?>