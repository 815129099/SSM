 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
           <%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>大学生兼职平台-发布兼职</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="大学生兼职平台-发布兼职">
<meta name="keywords" content="大学生兼职平台-发布兼职">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>

	<link media="screen" href="style/js/statics/grade1.css" type="text/css" rel="stylesheet" />
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<!--<script type="text/javascript" src="style/js/statics/jquery-latest.pack.js"></script>-->
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>


<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->

<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>

<script src="style/js/statics/grade2.js" type="text/javascript"></script>
<style type="text/css">
.BMap_mask{background:transparent url(style/images/img/blank.gif);}.BMap_noscreen{display:none;}.BMap_button{cursor:pointer;}.BMap_zoomer{background-image:url(style/images/img/mapctrls1d3.gif);background-repeat:no-repeat;overflow:hidden;font-size:1px;position:absolute;width:7px;height:7px;}.BMap_stdMpCtrl div{position:absolute;}.BMap_stdMpPan{width:44px;height:44px;overflow:hidden;background:url(style/images/img/mapctrls2d0.png) no-repeat;}.BMap_ie6 .BMap_stdMpPan{background:none;}.BMap_ie6 .BMap_smcbg{left:0;width:44px;height:464px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src="style/images/img/mapctrls2d0.png");}.BMap_ie6 .BMap_stdMpPanBg{z-index:-1;}.BMap_stdMpPan .BMap_button{height:15px;width:15px;}.BMap_panN,.BMap_panW,.BMap_panE,.BMap_panS{overflow:hidden;}.BMap_panN{left:14px;top:0;}.BMap_panW{left:1px;top:12px;}.BMap_panE{left:27px;top:12px;}.BMap_panS{left:14px;top:25px;}.BMap_stdMpZoom{top:45px;overflow:hidden;}.BMap_stdMpZoom .BMap_button{width:22px;height:21px;left:12px;overflow:hidden;background-image:url(style/images/img/mapctrls2d0.png);background-repeat:no-repeat;z-index:10;}.BMap_ie6 .BMap_stdMpZoom .BMap_button{background:none;}.BMap_stdMpZoomIn{background-position:0 -221px;}.BMap_stdMpZoomOut{background-position:0 -265px;}.BMap_ie6 .BMap_stdMpZoomIn div{left:0;top:-221px;}.BMap_ie6 .BMap_stdMpZoomOut div{left:0;top:-265px;}.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button{left:0;overflow:hidden;background:-webkit-gradient(linear,50% 0,50% 100%,from(rgba(255,255,255,0.85)),to(rgba(217,217,217,0.85)));z-index:10;-webkit-border-radius:22px;width:34px;height:34px;border:1px solid rgba(255,255,255,0.5);-webkit-box-shadow:0 2px 3.6px #CCC;display:-webkit-box;-webkit-box-align:center;-webkit-box-pack:center;-webkit-box-sizing:border-box;}.BMap_stdMpType4 .BMap_smcbg{position:static;background:url(style/images/img/mapctrls2d0_mb.png) 0 0 no-repeat;-webkit-background-size:24px 32px;}.BMap_stdMpType4 .BMap_stdMpZoomIn{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg{width:24px;height:24px;background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut{background-position:0 0;}.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg{width:24px;height:6px;background-position:0 -25px;}.BMap_stdMpSlider{width:37px;top:18px;}.BMap_stdMpSliderBgTop{left:18px;width:10px;overflow:hidden;background:url(style/images/img/mapctrls2d0.png) no-repeat -23px -226px;}.BMap_stdMpSliderBgBot{left:19px;height:8px;width:10px;top:124px;overflow:hidden;background:url(style/images/img/mapctrls2d0.png) no-repeat -33px bottom;}.BMap_ie6 .BMap_stdMpSliderBgTop,.BMap_ie6 .BMap_stdMpSliderBgBot{background:none;}.BMap_ie6 .BMap_stdMpSliderBgTop div{left:-23px;top:-226px;}.BMap_ie6 .BMap_stdMpSliderBgBot div{left:-33px;bottom:0;}.BMap_stdMpSliderMask{height:100%;width:24px;left:10px;cursor:pointer;}.BMap_stdMpSliderBar{height:11px;width:19px;left:13px;top:80px;overflow:hidden;background:url(style/images/img/mapctrls2d0.png) no-repeat 0 -309px;}.BMap_stdMpSliderBar.h{background:url(style/images/img/mapctrls2d0.png) no-repeat 0 -320px;}.BMap_ie6 .BMap_stdMpSliderBar,.BMap_ie6 .BMap_stdMpSliderBar.h{background:none;}.BMap_ie6 .BMap_stdMpSliderBar div{top:-309px;}.BMap_ie6 .BMap_stdMpSliderBar.h div{top:-320px;}.BMap_zlSt,.BMap_zlCity,.BMap_zlProv,.BMap_zlCountry{position:absolute;left:34px;height:21px;width:28px;background-image:url(style/images/img/mapctrls2d0.png);background-repeat:no-repeat;font-size:0;cursor:pointer;}.BMap_ie6 .BMap_zlSt,.BMap_ie6 .BMap_zlCity,.BMap_ie6 .BMap_zlProv,.BMap_ie6 .BMap_zlCountry{background:none;overflow:hidden;}.BMap_zlHolder{display:none;position:absolute;top:0;}.BMap_zlHolder.hvr{display:block;}.BMap_zlSt{background-position:0 -380px;top:21px;}.BMap_zlCity{background-position:0 -401px;top:52px;}.BMap_zlProv{background-position:0 -422px;top:76px;}.BMap_zlCountry{background-position:0 -443px;top:100px;}.BMap_ie6 .BMap_zlSt div{top:-380px;}.BMap_ie6 .BMap_zlCity div{top:-401px;}.BMap_ie6 .BMap_zlProv div{top:-422px;}.BMap_ie6 .BMap_zlCountry div{top:-443px;}.BMap_stdMpType1 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpSlider,.BMap_stdMpType3 .BMap_stdMpSlider,.BMap_stdMpType4 .BMap_stdMpSlider,.BMap_stdMpType2 .BMap_stdMpZoom,.BMap_stdMpType3 .BMap_stdMpPan,.BMap_stdMpType4 .BMap_stdMpPan{display:none;}.BMap_stdMpType3 .BMap_stdMpZoom{top:0;}.BMap_stdMpType4 .BMap_stdMpZoom{top:0;}.BMap_cpyCtrl a{font-size:11px;color:#7979CC;}.BMap_scaleCtrl{height:23px;overflow:hidden;}.BMap_scaleCtrl div.BMap_scaleTxt{font-size:11px;font-family:Arial,sans-serif;}.BMap_scaleCtrl div{position:absolute;overflow:hidden;}.BMap_scaleHBar img,.BMap_scaleLBar img,.BMap_scaleRBar img{position:absolute;width:37px;height:442px;left:0;}.BMap_scaleHBar{width:100%;height:5px;font-size:0;bottom:0;}.BMap_scaleHBar img{top:-437px;width:100%;}.BMap_scaleLBar,.BMap_scaleRBar{width:3px;height:9px;bottom:0;font-size:0;z-index:1;}.BMap_scaleLBar img{top:-427px;left:0;}.BMap_scaleRBar img{top:-427px;left:-5px;}.BMap_scaleLBar{left:0;}.BMap_scaleRBar{right:0;}.BMap_scaleTxt{text-align:center;width:100%;cursor:default;line-height:18px;}.BMap_omCtrl{background-color:#fff;overflow:hidden;}.BMap_omOutFrame{position:absolute;width:100%;height:100%;left:0;top:0;}.BMap_omInnFrame{position:absolute;border:1px solid #999;background-color:#ccc;overflow:hidden;}.BMap_omMapContainer{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;}.BMap_omViewMv{border-width:1px;border-style:solid;border-left-color:#84b0df;border-top-color:#adcff4;border-right-color:#274b8b;border-bottom-color:#274b8b;position:absolute;z-index:600;}.BMap_omViewInnFrame{border:1px solid #3e6bb8;}.BMap_omViewMask{width:1000px;height:1000px;position:absolute;left:0;top:0;background-color:#68c;opacity:.2;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=20);}.BMap_omBtn{height:13px;width:13px;position:absolute;cursor:pointer;overflow:hidden;background:url(style/images/img/mapctrls1d3.gif) no-repeat;z-index:1210;}.anchorBR .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;}.quad4 .BMap_omBtn{background-position:-26px -27px;}.quad4 .BMap_omBtn.hover{background-position:0 -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed{background-position:-39px -27px;}.quad4 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-13px -27px;}.anchorTR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;}.quad1 .BMap_omBtn{background-position:-39px -41px;}.quad1 .BMap_omBtn.hover{background-position:-13px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed{background-position:-26px -41px;}.quad1 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:0 -41px;}.anchorBL .BMap_omOutFrame{border-top:1px solid #999;border-right:1px solid #999;}.quad3 .BMap_omBtn{background-position:-27px -40px;}.quad3 .BMap_omBtn.hover{background-position:-1px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed{background-position:-40px -40px;}.quad3 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-14px -40px;}.anchorTL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;}.quad2 .BMap_omBtn{background-position:-40px -28px;}.quad2 .BMap_omBtn.hover{background-position:-14px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed{background-position:-27px -28px;}.quad2 .BMap_omBtn.BMap_omBtnClosed.hover{background-position:-1px -28px;}.anchorR .BMap_omOutFrame{border-bottom:1px solid #999;border-left:1px solid #999;border-top:1px solid #999;}.anchorL .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-top:1px solid #999;}.anchorB .BMap_omOutFrame{border-top:1px solid #999;border-left:1px solid #999;border-right:1px solid #999;}.anchorT .BMap_omOutFrame{border-bottom:1px solid #999;border-right:1px solid #999;border-left:1px solid #999;}.anchorNon .BMap_omOutFrame,.withOffset .BMap_omOutFrame{border:1px solid #999;}.BMap_zoomMask0,.BMap_zoomMask1{position:absolute;left:0;top:0;width:100%;height:100%;background:transparent url(style/images/img/blank.gif);z-index:1000;}.BMap_contextMenu{position:absolute;border-top:1px solid #adbfe4;border-left:1px solid #adbfe4;border-right:1px solid #8ba4d8;border-bottom:1px solid #8ba4d8;padding:0;margin:0;width:auto;visibility:hidden;background:#fff;z-index:10000000;}.BMap_cmShadow{position:absolute;background:#000;opacity:.3;filter:alpha(opacity=30);visibility:hidden;z-index:9000000;}div.BMap_cmDivider{border-bottom:1px solid #adbfe4;font-size:0;padding:1px;margin:0 6px;}div.BMap_cmFstItem{margin-top:2px;}div.BMap_cmLstItem{margin-bottom:2px;}.BMap_shadow img{border:0 none;margin:0;padding:0;height:370px;width:1144px;}.BMap_pop .BMap_top{border-top:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_center{border-left:1px solid #ababab;border-right:1px solid #ababab;background-color:#fff;}.BMap_pop .BMap_bottom{border-bottom:1px solid #ababab;background-color:#fff;}.BMap_shadow,.BMap_shadow img,.BMap_shadow div{-moz-user-select:none;-webkit-user-select:none;}.BMap_checkbox{background:url(style/images/img/mapctrls1d3.gif);vertical-align:middle;display:inline-block;width:11px;height:11px;margin-right:4px;background-position:-14px 90px;}.BMap_checkbox.checked{background-position:-2px 90px;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:none;}@media print{.BMap_noprint{display:none;}.BMap_noscreen{display:block;}.BMap_mask{background:none;}.BMap_pop .BMap_top img,.BMap_pop .BMap_center img,.BMap_pop .BMap_bottom img{display:block;}}.BMap_vectex{cursor:pointer;width:11px;height:11px;position:absolute;background-repeat:no-repeat;background-position:0 0;}.BMap_vectex_nodeT{background-image:url(style/images/img/nodeT.gif);}.BMap_vectex_node{background-image:url(style/images/img/node.gif);}.iw{width:100%;-webkit-box-sizing:border-box;border:.3em solid transparent;-webkit-background-clip:padding;}.iw_rt{position:relative;height:46px;width:195px;-webkit-box-sizing:border-box;display:-webkit-box;-webkit-box-align:center;margin:2px 5px 0 2px;background-color:rgba(0,0,0,0.8);-webkit-box-shadow:2px 2px 7px rgba(0,0,0,0.3);-webkit-border-radius:2px;color:#fff;}.iw_rt:after{content:"";position:absolute;left:50%;bottom:-8px;width:0;height:0;border-left:5px solid transparent;border-top:8px solid rgba(0,0,0,0.8);border-right:5px solid transparent;margin:0 0 0 -6px;}.iw_s{text-align:center;vertical-align:middle;height:100%;-webkit-box-sizing:border-box;}.iw_rt .iw_s1{color:#cbcbcb;}.iw_rt b{color:#fff;font-weight:bold;}.iw_rt_gr{margin-left:-4px;}.iw_busline{margin:32px 0 0 -3px;}.iw_busline .iw_cc{text-align:center;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;padding:0 6px;}.iw_r{-webkit-box-ordinal-group:3;}.iw_r,.iw_l{height:100%;font-size:4.5em;text-align:center;color:#747474;border:none;-webkit-box-sizing:border-box;-webkit-border-radius:0;line-height:.7em;border:1px solid rgba(255,255,255,0.2);width:41px;}.iw_r{border-style:none none none solid;}.iw_l{border-style:none solid none none;}.iw_search,.iw_l{background:url("style/images/img/u20LgruGtNFM8lqnNtfK2JqN3CVeW1gzWj9jThd0xd59R8BBgAAiefGO1Bt1gAAAABJRU5ErkJggg==") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line_s,.iw_r{background:url("style/images/img/wCKLRHq20vjSoVNKWunH4rTBDv5Cv7NKeKfvvU2nINzHAuexzUA7KQTkoB6UxDicKvcqfQQYABaiUBxugCsr20AAAAAElFTkSuQmCC") no-repeat 50% 50%;-webkit-background-size:19px 19px;}.iw_line{height:64px;width:228px;padding:0 11px;line-height:20px;}.iw_bustrans .iw_cc{text-align:center;}.iw_c{color:#FFFFFF;text-decoration:none;overflow:hidden;display:-webkit-box;-webkit-box-align:center;-webkit-box-flex:1;}.iw_cc{-webkit-box-sizing:border-box;width:100%;border:none;}.gray_background{filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity:0.5;opacity: 0.5} .light_gray_background {filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity:0.7;opacity: 0.7} .panoInfoBox {cursor: pointer; } .panoInfoBox {position: relative; width: 323px; height: 101px; margin-bottom: 4px; cursor: pointer; } .panoInfoBox .panoInfoBoxTitleBg {width: 323px; height: 19px; position: absolute; left: 0; bottom: 0; z-index: 2; background-color: #000; opacity: .7; } .panoInfoBox .panoInfoBoxTitleContent {font-size: 12px; color: #fff; position: absolute; bottom: 2px; left: 5px; z-index: 3; text-decoration: none; } .RouteAddressOuterBkg{position:relative; padding: 32px 4px 4px 3px; background-color:#ffdd99; } .RouteAddressInnerBkg{padding: 3px 5px 8px 8px; background-color:#ffffff; } #RouteAddress_DIV1{margin-top: 5px; } .RouteAddressTip{position:absolute; width:340px; top:0px; text-align:center; height:30px; line-height:30px; color:#994c00; } .route_tip_con {position:absolute;top:145px;} .route_tip_con .route_tip{position:absolute;width:233px;height:29px;color:#803300;text-align:center;line-height:29px;border:#cc967a solid 1px;background:#fff2b2;z-index:100000;} .route_tip_con .route_tip span{position:absolute;top:0;right:0;_right:-1px;width:14px;height:13px;background:url(style/images/img/addrPage.png) no-repeat 0 -121px;cursor:pointer;} .route_tip_con .route_tip_shadow{width:233px;height:29px;  position:absolute;left:1px;top:1px;background:#505050;border:1px solid #505050;opacity:0.2;filter:alpha(opacity=20)} .sel_body_body_page{margin:5px 0} .sel_n{margin-top:5px;overflow:hidden;} .sel_n .sel_top{background:url(style/images/img/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n .sel_body_top{height:32px;width:100%;background:url(style/images/img/addrPage.png) no-repeat 0 -41px;} .sel_n .sel_body_title{float:left;width:100%;height:31px;} .sel_n .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(style/images/img/bgs.gif) no-repeat -79px -387px;} .sel_n .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_n .sel_body_button a{} .sel_n .sel_bottom{background:url(style/images/img/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_n .sel_body_body{padding:3px 0 0 0} .sel_n1{margin-top:5px;width:329px;overflow:hidden;} .sel_n1 .sel_top{background:url(style/images/img/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_n1 .sel_body_top{height:31px;width:100%;background:url(style/images/img/sel_body_n_top.gif) repeat-x;} .sel_n1 .sel_body_top{height:32px;width:100%;background:url(style/images/img/addrPage.png) no-repeat 0 -41px} .sel_n1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_n1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(style/images/img/bgs.gif) no-repeat -79px -387px;} .sel_n1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_n1 .sel_body_button{float:left;width:20px;height:31px;margin-left:-23px;background:url(style/images/img/bgs.gif) no-repeat -253px -382px;overflow:hidden;zoom:1;cursor:pointer;} .sel_n1 .sel_body_button a{display:none;} .sel_n1 .sel_body_body{display:none} .sel_n1 .sel_bottom{background:url(style/images/img/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_y{margin-top:5px;overflow:hidden;} .sel_y .sel_top{background:url(style/images/img/bgs.gif) no-repeat 0 -439px;height:4px;zoom:1;font-size:0px;} .sel_y .sel_body_top{height:32px;width:100%;background:url(style/images/img/addrPage.png) no-repeat 0 0} .sel_y .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_y .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(style/images/img/bgs.gif) no-repeat -167px -384px;} .sel_y .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#5B7BCB;} .sel_y .sel_body_button{float:left;width:20px;height:31px;margin-left:-20px;background:url(style/images/img/bgs.gif) no-repeat -269px -297px;cursor:pointer;} .sel_y .sel_body_button a{display:none;} .sel_y .sel_body_body{display:none;height:0px} .sel_y .sel_body_body_div{} .sel_y .sel_bottom{background:url(style/images/img/bgs.gif) no-repeat 0 -436px;height:4px;font-size:0px;} .sel_y .sel_body_body_page{display:none;height:0px;} .sel_x{margin-top:5px;width:329px;overflow:hidden;} .sel_x .sel_top{background:url(style/images/img/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x .sel_body_top{height:32px;width:100%;background:url(style/images/img/addrPage.png) no-repeat 0 -41px;} .sel_x .sel_body_title{float:left;width:100%;height:31px;} .sel_x .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(style/images/img/bgs.gif) no-repeat -122px -384px;} .sel_x .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x .sel_body_button{float:left;width:55px;margin-left:-55px;padding-top:8px;} .sel_x .sel_body_button a{} .sel_x .sel_body_body{} .sel_x .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x .sel_bottom{background:url(style/images/img/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_x1{margin-top:5px;width:329px;overflow:hidden;} .sel_x1 .sel_top{background:url(style/images/img/bgs.gif) no-repeat 0 -418px;height:4px;font-size:0px;} .sel_x1 .sel_body_top{height:32px;width:100%;background:url(style/images/img/addrPage.png) no-repeat 0 -41px} .sel_x1 .sel_body_title{float:left;width:100%;height:31px;cursor:pointer;} .sel_x1 .sel_body_sign{margin-top:1px;width:30px;height:31px;float:left;background:url(style/images/img/bgs.gif) no-repeat -122px -384px;} .sel_x1 .sel_body_name{margin:0 20px 0 30px;padding:8px 7px 7px;font-size:14px;color:#FA8722;} .sel_x1 .sel_body_button{float:left;width:55px;height:31px;margin-left:-55px;} .sel_x1 .sel_body_button a{display:none;} .sel_x1 .sel_body_body{display:none;height:0px;} .sel_x1 .sel_body_body_div{padding:5px 5px 0 5px;} .sel_x1 .sel_bottom{background:url(style/images/img/bgs.gif) no-repeat 0 -415px;height:4px;font-size:0px;} .sel_body_citylist{height:100px;padding: 0 0 0 5px} .sel_body_resitem{table-layout:fixed;overflow-x:hidden;overflow-y:hidden;} .sel_body_resitem table {margin-right:5px;} .sel_body_resitem tr{cursor:pointer;} .sel_body_resitem th{padding-top:5px;padding-left:5px;text-align:left;vertical-align:top;width:22px;} .sel_body_resitem th div.iconbg{background:url(style/images/img/markers_new_ie6.png) no-repeat scroll 0 0;height:29px;width:24px;} .sel_body_resitem th div.icon{cursor:pointer} .sel_body_resitem th div#no_0_1, .sel_body_resitem th div#no_1_1{background-position:0 -64px} .sel_body_resitem th div#no_0_2, .sel_body_resitem th div#no_1_2{background-position:-24px -64px} .sel_body_resitem th div#no_0_3, .sel_body_resitem th div#no_1_3{background-position:-48px -64px} .sel_body_resitem th div#no_0_4, .sel_body_resitem th div#no_1_4{background-position:-72px -64px} .sel_body_resitem th div#no_0_5, .sel_body_resitem th div#no_1_5{background-position:-96px -64px} .sel_body_resitem th div#no_0_6, .sel_body_resitem th div#no_1_6{background-position:-120px -64px} .sel_body_resitem th div#no_0_7, .sel_body_resitem th div#no_1_7{background-position:-144px -64px} .sel_body_resitem th div#no_0_8, .sel_body_resitem th div#no_1_8{background-position:-168px -64px} .sel_body_resitem th div#no_0_9, .sel_body_resitem th div#no_1_9{background-position:-192px -64px} .sel_body_resitem th div#no_0_10, .sel_body_resitem th div#no_1_10{background-position:-216px -64px} .sel_body_resitem td{line-height:160%;padding:3px 0 3px 3px;vertical-align:top;} .sel_body_resitem div.ra_td_title{float:left;margin-right:40px;} .sel_body_resitem div.ra_td_button{float:right; width:40px;} .sel_body_resitem div.ra_td_button input{height:18px;font-size:12px;width:40px;} .sel_body_resitem div.clear{clear:both;height:0px;width:100%;} .sel_body_resitem td .selBtn {width:70px;height:29px;background:url(style/images/img/addrPage.png) no-repeat -21px -81px;text-align:center;line-height:29px;visibility:hidden;color:#b35900;display:inline-block;*display:inline;*zoom:1;} .sel_body_resitem td .list_street_view_poi {display:inline-block;float:none;margin-right:6px;position:static;*vertical-align:-3px;_vertical-align:-5px;*display:inline;*zoom:1;} .selInfoWndBtn {width:70px;height:29px;background:url(style/images/img/addrPage.png) no-repeat -21px -81px;text-align:center;line-height:29px;margin: 0 auto;cursor:pointer;color:#b35900} .sel_body_body td a{text-decoration: none; cursor: auto; } .sel_body_body td a:hover,.sel_body_body td a:focus{text-decoration:underline; }</style>
<link rel="stylesheet" href="style/css/ui.css">
<link rel="stylesheet" href="style/css/window.css">
<script type="text/javascript">
var youdao_conv_id = 271546;
var email = "${sessionScope.email}";
var type = "${sessionScope.type}";
var tip = false;
$(document).ready(function(){
if(email!=null&&email!=""){}
    else{
    $("#ex").html("未登录");
    window.location.href = 'login';
    };

    if(type!="company"){window.location.href = 'index';}
    disResume();
    disApply();
    $("#department,#number,#deRequest,#salary,#time,#detail").focus(function(){
    if($("#ggg").val()!="OK"){
        $.post("isJobName",{"email":email,"jobName":$("#positionName").val()},
            function(response){
                      if(response.tip==true){
                         $('#beError').show();
                         $('#beError').html("该兼职名称已存在");
                         $("#select_category").focus();
                         $("#jobPreview").find(":submit").attr("disabled", true);
                      }else{
                      $('#beError').hide();
                      $("#jobPreview").find(":submit").attr("disabled", false);}
            });
    }
    });

    $("#pa").click(function(){
    $("#allAllege").addClass("dn");
    		$("#pass").removeClass("dn");
    		$("#unmanage").addClass("dn");
    		$("#unpass").addClass("dn");
    	    $("#valid").addClass("dn");
            $("#unvalid").addClass("dn");
            $("#complete").addClass("dn");
            $("#createIndex").addClass("dn");
            $("#create").addClass("dn");
            $("#createSu").addClass("dn");
    	});

    	$("#unpa").click(function(){
    	$("#allAllege").addClass("dn");
    		$("#unpass").removeClass("dn");
    		$("#unmanage").addClass("dn");
    		$("#complete").addClass("dn");
    		$("#pass").addClass("dn");
    		$("#valid").addClass("dn");
            $("#unvalid").addClass("dn");
            $("#createIndex").addClass("dn");
            $("#create").addClass("dn");
            $("#createSu").addClass("dn");
    	});

    	$("#unman").click(function(){
    	$("#allAllege").addClass("dn");
    		$("#unmanage").removeClass("dn");
    		$("#complete").addClass("dn");
    		$("#createIndex").addClass("dn");
    		$("#create").addClass("dn");
    		$("#createSu").addClass("dn");
    		$("#pass").addClass("dn");
    		$("#unpass").addClass("dn");
    		$("#valid").addClass("dn");
            $("#unvalid").addClass("dn");
    	});



        $("#unva").click(function(){
        $("#allAllege").addClass("dn");
    		$("#unvalid").removeClass("dn");
    		$("#pass").addClass("dn");
    		$("#unpass").addClass("dn");
    		$("#unmanage").addClass("dn");
    		$("#complete").addClass("dn");
            $("#valid").addClass("dn");
            $("#createIndex").addClass("dn");
            $("#create").addClass("dn");
            $("#createSu").addClass("dn");
    	});

    	 $("#comp").click(function(){
    	 $("#allAllege").addClass("dn");
            		$("#unvalid").addClass("dn");
            		$("#pass").addClass("dn");
            		$("#unpass").addClass("dn");
            		$("#unmanage").addClass("dn");
            		$("#complete").removeClass("dn");
                    $("#valid").addClass("dn");
                    $("#createIndex").addClass("dn");
                    $("#create").addClass("dn");
                    $("#createSu").addClass("dn");
            	});


    });

    function create(){
    $("#allAllege").addClass("dn");
        $("#create").removeClass("dn");
        $("#createIndex").addClass("dn");
        $("#unvalid").addClass("dn");
        $("#pass").addClass("dn");
        $("#unpass").addClass("dn");
        $("#complete").addClass("dn");
        $("#unmanage").addClass("dn");
        $("#valid").addClass("dn");
        $("#createSu").addClass("dn");
        $("#kkk").show();
        $("#select_category").val("");
        $("#positionType").val("");
        $("#positionName").val("");
        $("#department").val("");
        $("#number").val("");
        $("#deRequest").val("");
        $("#salary").val("");
        $("#time").val("");
        $("#detail").val("");
        $("#ggg").val("");
    }

    function disResume(){
    $.ajax({
            type:"POST",
            url:"disResume",
            data:{email:email},
            dataType:"json",
            success:function(response){
            var obj = response.reList;


            var html = "";
            var j = 0;
            var x = 0;
            var html1 = "";
            for(var i = 0;i<obj.length;i++){
            if(obj[i].state=="有效"){
            j++;
                html+='<ul class="reset my_jobs"><li><h3><a target="_blank" href="applyRe?id='+obj[i].id+'">'
                +obj[i].jobName+
                '</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>'+obj[i].department+
                '</span></h3><span class="receivedResumeNo"><a href="">应聘简历（1）</a></span><div>'
                +obj[i].number+'/'+obj[i].salary+
                '</div><div class="c9">'
                +obj[i].time+
                '</div><div class="links"><a class="job_edit" onclick="editResume('+obj[i].id+')">编辑</a><a class="job_offline" onclick="downResume('+obj[i].id+')">下线</a></div></li></ul>'
            }else{
            x++;
            html1+='<ul class="reset my_jobs"><li><h3><a target="_blank" href="applyRe?id='+obj[i].id+'">'
                   +obj[i].jobName+
                   '</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>'+obj[i].department+
                   '</span></h3><span class="receivedResumeNo"><a href="">应聘简历（1）</a></span><div>'
                   +obj[i].number+'/'+obj[i].salary+
                   '</div><div class="c9">'
                   +obj[i].time+
                   '</div><div class="links"><a onclick="editResume('+obj[i].id+')">编辑</a><a class="job_offline" onclick="upResume('+obj[i].id+')">上线</a><a class="job_del" onclick="delResume('+obj[i].id+')">删除</a></div></li></ul>'
            }
        }
            $("#searchForm").html(html);
            $("#positionNumber").html(j);
            $("#positionNumber1").html(x);
            $("#searchForm1").html(html1);


            },
            error:function(response){
            alert("失败");
            }

            });
            }

    function disApply(){
    var ht = '',ht1='',ht2='',ht3='',ht4='',html2='';
        var xx1=0,xx2=0,xx3=0,xx4=0;
            $.ajax({
                    type:"post",
                    data:{"email":email},
                    url:'showAp',
                    dataType: 'json',
                    success:function(response){
                    var obj = response.applyList;
                    var obj1 = response.showAllege;
                    var s = "";
                    for(var i = 0;i<obj.length;i++){
                    if(obj[i].applyState=="0"){
                    xx1++;
                        s = "待查看";
                    ht1+='<li data-id="" class="onlineResume"><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="preview?email='+obj[i].stuEmail+'"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'
                         +obj[i].applyTime+'</span><div>'
                         +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+
                          obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+
                          '</div><div class="jdpublisher"><span>应聘职位：<a title="查看兼职信息" target="_blank" href="applyRe?id='+obj[i].applyId+'">'+
                          obj[i].jobName+'</a></span></div></div><div class="links">'+
                          '<a class="resume_del"  onclick="passApply('+obj[i].id+')">通过</a>'+
                          '<a class="resume_del"  onclick="unPassApply('+obj[i].id+')">不通过</a></div></div></li>'
                    }else if(obj[i].applyState=="1"){
                    xx2++;
                        s = "已通过";
                        ht2+='<li data-id="1686182" class="onlineResume"><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="preview?email='+obj[i].stuEmail+'"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'
                                              +obj[i].applyTime+'</span><div>'
                                              +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+
                                               obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+
                                               '</div><div class="jdpublisher"><span>应聘职位：<a title="查看兼职信息" target="_blank" href="applyRe?id='+obj[i].applyId+'">'+
                                               obj[i].jobName+'</a></span></div></div><div class="links">'+
                    '<a class="resume_del" onclick="comApply('+obj[i].id+')">完成</a>'+                            '<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
                    }else if(obj[i].applyState=="2"){
                    xx3++;
                        s = "不合适";
                        ht3+='<li data-id="1686182" class="onlineResume"><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="preview?email='+obj[i].stuEmail+'"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'
                                              +obj[i].applyTime+'</span><div>'
                                              +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+
                                               obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+
                                               '</div><div class="jdpublisher"><span>应聘职位：<a title="查看兼职信息" target="_blank" href="applyRe?id='+obj[i].applyId+'">'+
                                               obj[i].jobName+'</a></span></div></div><div class="links">'+
                                                '<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
                    }else if(obj[i].applyState=="4"){
                    var bbb = 0;
                        xx4++;
                        s = "已完成";
                        if(obj[i].stuGrade==null || obj[i].stuGrade.length<=0){
    ht4+='<li data-id="1686182" class="onlineResume"><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="preview?email='+obj[i].stuEmail+'"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'+obj[i].applyTime+'</span><div>'
    +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+'</div><div class="jdpublisher"><span>应聘职位：<a title="查看兼职信息" target="_blank" href="applyRe?id='+obj[i].applyId+'">'+obj[i].jobName+'</a></span></div></div><div class="links">'+ '<a class="resume_del" onclick="appraise('+obj[i].id+')">评价</a>'

    for(var j=0;j<obj1.length;j++){
        if(obj1[j].allId == obj[i].id){
            bbb = 1;
        }
    }

     if(bbb == 1){
         bbb =0;
          ht4 +='<a class="resume_del">已申诉</a>'+ '<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
     }else{
         ht4 +='<a class="resume_del" onclick="allege('+obj[i].id+',\''+obj[i].stuEmail+'\')">申诉</a>'+ '<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
     }






        }else{

         ht4+='<li data-id="1686182" class="onlineResume"><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="preview?email='+obj[i].stuEmail+'"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'+obj[i].applyTime+'</span><div>'
    +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+ '</div><div class="jdpublisher"><span>应聘职位：<a title="查看兼职信息" target="_blank" href="applyRe?id='+obj[i].applyId+'">'+obj[i].jobName+'</a></span></div></div><div class="links">'+ '<a class="resume_del">已评价</a>'

    for(var j=0;j<obj1.length;j++){
            if(obj1[j].allId == obj[i].id){
                bbb = 1;
            }
        }

         if(bbb == 1){
             bbb =0;
              ht4 +='<a class="resume_del">已申诉</a>'+'<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
         }else{
             ht4 +='<a class="resume_del" onclick="allege('+obj[i].id+',\''+obj[i].stuEmail+'\')">申诉</a>'+'<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
         }




        }
                                         }
                    }
                    $("#unMa").html(ht1);
                    $("#p").html(ht2);
                    $("#uP").html(ht3);
                    $("#complete1").html(ht4);
                    $("#dcl").html("（共"+xx1+"份）");
                    $("#tg").html("（共"+xx2+"份）");
                    $("#btg").html("（共"+xx3+"份）");
                    $("#comNum").html("（共"+xx4+"份）");

                    var allegeNumber = 0;
                                for(var i=0;i<obj1.length;i++){
                                allegeNumber++;
                                    html2+='<ul class="reset my_jobs"><li><h3><a style="text-decoration:none;">申述人：'+obj1[i].email+'</a></h3><span>申述时间：'
                                    +obj1[i].allTime+'</span><h3><a style="text-decoration:none;">申述对象：'+obj1[i].allEmail+'</a></h3><div>申述原因：'
                                    +obj1[i].allReason+'</div><div>描述：'+obj1[i].allText+'</div><div class="c9">处理结果：'

                                    if(obj1[i].dealText==null || obj1[i].dealText==""){
                                     html2+='暂未处理</div></li></ul>'
                                    }else{
                                    html2+=obj1[i].dealText+'</div><div><div style="margin-left:405px;">处理时间：'
                                            +obj1[i].dealTime+'</div></div></li></ul>'
                                    }

                                }
                                $("#allegeForm").html(html2);
                                $("#allegeNumber").html(allegeNumber);

                }
            });

            }

        function downResume(id){
        $.ajax({
         type:"POST",
         url:"downResume",
         data:{id:id,email:email},
         dataType:"json",
         success:function(result){
         if(result == true){
         disResume();
         $("#valid").addClass("dn");
         $("#createSu").removeClass("dn");
         $("#createSu #showTip").html("恭喜你，下线成功！");
         }
         }
        })
        }

         function delResume(id){
            $.ajax({
             type:"POST",
             url:"delResume",
             data:{id:id,email:email},
             dataType:"json",
             success:function(result){
             if(result == true){
             disResume();
             $("#unvalid").addClass("dn");
             $("#valid").addClass("dn");
             $("#createSu").removeClass("dn");
             $("#createSu #showTip").html("恭喜你，删除兼职成功！");
             }
             }
            })
            }

             function upResume(id){
                $.ajax({
                 type:"POST",
                 url:"upResume",
                 data:{id:id,email:email},
                 dataType:"json",
                 success:function(result){
                 if(result == true){
                 disResume();
                 $("#unvalid").addClass("dn");
                 $("#createSu").removeClass("dn");
                 $("#createSu #showTip").html("恭喜你，上线成功！");
                 }
                 }
                })
                }

    function passApply(id){
            $.ajax({
             type:"POST",
             url:"passApply",
             data:{id:id},
             dataType:"json",
             success:function(result){
             if(result == true){
             disApply();
              $("#unmanage").addClass("dn");
              $("#createSu").removeClass("dn");
              $("#createSu #showTip").html("恭喜你，操作成功！");
             }
             }
            })
            }


    function unPassApply(id){
            $.ajax({
             type:"POST",
             url:"unPassApply",
             data:{id:id},
             dataType:"json",
             success:function(result){
             if(result == true){
             disApply();
              $("#unmanage").addClass("dn");
              $("#createSu").removeClass("dn");
              $("#createSu #showTip").html("恭喜你，操作成功！");
             }
             }
            })
            }

    function delApply(id){
            $.ajax({
             type:"POST",
             url:"delApply",
             data:{id:id},
             dataType:"json",
             success:function(result){
             if(result == true){
              disApply();
              $("#allAllege").addClass("dn");
              $("#complete").addClass("dn");
              $("#createIndex").addClass("dn");
              $("#create").addClass("dn");
              $("#unpass").addClass("dn");
              $("#valid").addClass("dn");
              $("#unvalid").addClass("dn");
              $("#unmanage").addClass("dn");
              $("#pass").addClass("dn");
              $("#createSu").removeClass("dn");
              $("#createSu #showTip").html("恭喜你，操作成功！");
             }
             }
            })
            }

             function comApply(id){
                        $.ajax({
                         type:"POST",
                         url:"comApply",
                         data:{id:id},
                         dataType:"json",
                         success:function(result){
                         if(result == true){
                          disApply();
                          $("#pass").addClass("dn");
                          $("#createSu").removeClass("dn");
                          $("#createSu #showTip").html("恭喜你，操作成功！");
                         }
                         }
                        })
                        }

            function lookRe(){
                 $("#valid").removeClass("dn");
                 $("#pass").addClass("dn");
                 $("#unpass").addClass("dn");
                 $("#unmanage").addClass("dn");
                 $("#complete").addClass("dn");
                 $("#unvalid").addClass("dn");
                 $("#createIndex").addClass("dn");
                 $("#create").addClass("dn");
                 $("#createSu").addClass("dn");
                 $("#allAllege").addClass("dn");
            }

             function myAllege(){
             $("#allAllege").removeClass("dn");
                             $("#valid").addClass("dn");
                             $("#pass").addClass("dn");
                             $("#unpass").addClass("dn");
                             $("#unmanage").addClass("dn");
                             $("#complete").addClass("dn");
                             $("#unvalid").addClass("dn");
                             $("#createIndex").addClass("dn");
                             $("#create").addClass("dn");
                             $("#createSu").addClass("dn");
                        }

            function appraise(id){
                             $("#myModal").modal('show');
                             $("#pointV4").val(id);
                        }

             function allege(id,comEmail){
                                             $("#userModal").modal('show');
                                             $("#myModal").modal('hide');
                                             $("#pointId").val(id);
                                             $("#pointEmail").val(comEmail);
                                        }

            function editResume(id){
              $("#valid").addClass("dn");
              $("#unvalid").addClass("dn");
              $("#create").removeClass("dn");
              $("#create #editTip").html("<em></em>修改兼职");
                     $.ajax({
                     type:"POST",
                     url:"getResumeById",
                     data:{id:id},
                     dataType:"json",
                     success:function(response){
                     $("#select_category").val(response.resume.jobType);
                     $("#positionType").val(response.resume.jobType);
                     $("#positionName").val(response.resume.jobName);
                     $("#department").val(response.resume.department);
                     $("#number").val(response.resume.number);
                     $("#deRequest").val(response.resume.deRequest);
                     $("#salary").val(response.resume.salary);
                     $("#time").val(response.resume.time);
                     $("#detail").val(response.resume.detail);
                     $("#kkk").hide();
                     $("#ggg").val("OK");
                     $("#positionType").attr("readOnly","true");
                     $("#positionName").attr("readOnly","true");
                     },
                     error:function(){
                     $("#create").addClass("dn");
                     $("#createSu").removeClass("dn");
                     $("#createSu #showTip").html("很遗憾，修改失败！");
                     }
                     })

                }

</script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="comIndex">
    			<img width="229" height="43" alt="大学生兼职平台-发布兼职" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="comIndex">首页</a></li>
    			<li><a href="comIndex">公司</a></li>
    			<li ><a href="index" rel="nofollow">学生版</a></li>
	    		<li ><a href="login" rel="nofollow">登录</a></li>
	    		<li ><a href="register" rel="nofollow">注册</a></li>
	    	</ul>
        	<dl class="collapsible_menu">
            	<dt style="height:30px;line-height:30px;">
           			<span id="ex">${sessionScope.email}</span>
            		<span class="red dn" id="noticeDot-1" ></span>
            		<i></i>
            	</dt>
                    <dd style="display: none;"><a href="resume">我发布的职位</a></dd>
                	<dd style="display: none;"><a href="resume">我收到的简历</a></dd>
                	<dd class="btm" style="display: none;"><a href="comIndex">我的公司主页</a></dd>
                    <dd style="display: none;"><a href="updatePwd">修改密码</a></dd>
                    <dd class="logout" style="display: none;"><a rel="nofollow" href="outLogin">退出</a></dd>
            </dl>
                                </div>
    </div><!-- end #header -->
    <div id="container">

        	<div class="sidebar">
            	<a class="btn_create" onclick="create()">发布新兼职</a>
                <dl class="company_center_aside"   style="text-align:center;">
		<dt>报名</dt>
		<dd>
		<a id="unman">待处理</a>
		</dd>
	<dd>
		<a id="pa">已通过</a>
	</dd>
	<dd>
		<a id="unpa">未通过</a>
	</dd>
	<dd>
    		<a id="comp">已完成</a>
    </dd>
</dl>
<dl class="company_center_aside"   style="text-align:center;">
		<dt>兼职</dt>
			<dd>
		<a id="va" onclick="lookRe()">有效兼职</a>
	</dd>
	<dd>
		<a id="unva">下线兼职</a>
	</dd>
</dl>

<dl class="company_center_aside"   style="text-align:center;">
		<dt>申述</dt>
		<dd><a  onclick="myAllege()">我的申述</a></dd>
</dl>
      </div><!-- end .sidebar -->



         <div class="content" id="createIndex"><dl class="company_center_content">
         <dt><h1><em></em>兼职主页</h1></dt><dd><div class="ccc_tr">今日已发布 <span>1</span> 个兼职   还可发布 <span>4</span> 个兼职</div>
         <div class="publish_tip"><h2 >恭喜你，可以发布兼职了，你希望？</h2>
         <a onclick="lookRe()">查看兼职</a><br><a class="greylink" onclick="create()">发布新兼职</a><br>
          <a class="greylink" href="comIndex"> 进入我的公司主页</a><br>
          <div style="float:left;" class="invite_share"></div></div></dd></dl></div>


         <div class="content dn" id="createSu"><dl class="company_center_content">
         <dt><h1><em></em>提示</h1></dt><dd><div class="ccc_tr">今日已发布 <span>1</span> 个兼职   还可发布 <span>4</span> 个兼职</div>
          <div class="publish_tip"><h2 id="showTip">恭喜你，兼职发布成功！</h2>
          <a onclick="lookRe()">查看兼职</a><br><a class="greylink" onclick="create()">继续发布新兼职</a><br>
          <a class="greylink" href="comIndex"> 进入我的公司主页</a><br>
          <div style="float:left;" class="invite_share"></div></div></dd></dl></div>



         <div class="content dn" id="unmanage"><dl class="company_center_content">
         <dt><h1><em></em>待处理简历 <span id="dcl"></span></h1></dt><dd>
         <form action="haveRefuseResumes.html" method="get" id="filterForm">
         <ul class="reset resumeLists" id="unMa"></ul></form></dd></dl></div>


            <div class="content dn" id="pass"><dl class="company_center_content">
            <dt><h1><em></em>通过简历 <span id="tg"></span></h1></dt><dd>
            <form action="haveRefuseResumes.html" method="get" id="filterForm">
            <ul class="reset resumeLists" id="p"></ul></form></dd></dl></div>


            <div class="content dn" id="unpass"><dl class="company_center_content">
            <dt><h1><em></em>未通过简历 <span id="btg"></span></h1></dt><dd>
            <form action="haveRefuseResumes.html" method="get" id="filterForm">
            <ul class="reset resumeLists" id="uP"></ul></form></dd></dl></div>


            <div class="content dn" id="complete"><dl class="company_center_content">
            <dt><h1><em></em>已完成 <span id="comNum"></span></h1></dt><dd>
            <form action="haveRefuseResumes.html" method="get" id="filterForm">
            <ul class="reset resumeLists" id="complete1"></ul><!-- end .resumeLists -->
            </form></dd></dl></div><!-- end .content -->


            <div class="content dn" id="valid"><dl class="company_center_content">
            <dt><h1><em></em>有效职位 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber"></i>个）</span></h1></dt>
            <dd><form id="searchForm"></form></dd></dl></div><!-- end .content -->



            <div class="content dn" id="allAllege"><dl class="company_center_content">
            <dt><h1><em></em>我的申述 <span>（共<i style="color:#fff;font-style:normal" id="allegeNumber"></i>个）</span> </h1></dt>
             <dd><form id="allegeForm"></form></dd></dl></div>



            <div class="content dn" id="unvalid">
            <dl class="company_center_content">
            <dt><h1><em></em>已下线职位 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber1"></i>个）</span></h1></dt><dd>
             <form id="searchForm1"></form></dd></dl></div><!-- end .content -->


            <div class="content dn" id="create">
            	<dl class="company_center_content">
                    <dt>
                        <h1 id="editTip">
                            <em></em>发布新兼职
                        </h1>
                    </dt>
                    <dd>
                    	<div class="ccc_tr">今日已发布 <span>0</span>个职位还可发布 <span>5</span>个职位
                    	</div>
                    	<form id="jobForm" >

                            <table class="btm">
                            	<tbody>
                            	<tr id="kkk">
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85">兼职类型</td>
                                	<td>

                                        <input type="button" value="请选择兼职类型" id="select_category" class="selectr selectr_380" name="select_category">          <input type="hidden" id="positionType" value="" name="positionType">
                                        <div class="dn" id="box_job" style="display: none;">
                                            <dl>
                                                <dt>兼职类型</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                            <li>
                                                                <span>热门兼职</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>服务员</li>
                                                                    <li>促销导购</li>
                                                                    <li>打包分拣</li>
                                                                    <li>礼仪模特</li>
                                                                    <li>话务客服</li>
                                                                    <li>家教助教</li>
                                                                    <li>充场</li>
                                                                    <li>问卷调查</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>演艺达人</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>礼仪模特</li>
                                                                    <li>群众演员</li>
                                                                    <li>演出</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>简单易做</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>传单派发</li>
                                                                    <li>打包分拣</li>
                                                                    <li>充场</li>
                                                                    <li>问卷调查</li>
                                                                    <li>审核录入</li>
                                                                    <li>保洁</li>
                                                                    <li>地推拉访</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>跑腿办事</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>挂号排队</li>
                                                                    <li>送餐员</li>
                                                                    <li>宠物寄养</li>
                                                                    <li>车票代购</li>
                                                                </ul>
                                                            </li>
                                                            <li>

                                                                    <span>室内推荐</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>话务客服</li>
                                                                    <li>促销导购</li>
                                                                    <li>文员</li>
                                                                    <li>展会协助</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>体力达人</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>餐饮工</li>
                                                                    <li>服务员</li>
                                                                    <li>安保</li>
                                                                    <li>会展执行</li>
                                                                    <li>快递配送</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>专业技能</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>司机代驾</li>
                                                                    <li>技师技工</li>
                                                                    <li>美容美发</li>
                                                                    <li>月嫂阿姨</li>
                                                                    <li>销售房产</li>
                                                                    <li>经纪人</li>
                                                                    <li>保险</li>
                                                                    <li>在线老师</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>特色职位</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>校园代理</li>
                                                                    <li>家教助教</li>
                                                                    <li>健身教练</li>
                                                                    <li>翻译</li>
                                                                    <li>婚礼主持</li>
                                                                    <li>摄影摄像</li>
                                                                    <li>旅行导游</li>
                                                                    <li>美工设计</li>
                                                                    <li>创意策划</li>
                                                                    <li>财务会计</li>
                                                                    <li>项目外包</li>
                                                                    <li>软件开发</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>优秀青年</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>志愿者</li>
                                                                    <li>救生员</li>
                                                                    <li>实习生</li>
                                                                    <li>社会义工</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>其他</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>临时工</li>
                                                                    <li>其他</li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </dd>                                                                                                </dl>
                                        </div>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职名称</td>
                                	<td>
                                    	<input type="text"placeholder="请选择兼职名称" value="" name="positionName" id="positionName"><span class="error" style="display:none;" id="beError"></span>
                                    </td>

                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职地点</td>
                                	<td>
                                    	<input type="text" placeholder="请输入兼职地点" value="" name="department" id="department">
                                    </td>
                                </tr>
                                 <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>招聘人数</td>
                                	<td>
                                    	<input type="text" placeholder="请输入招聘人数" value="" name="number" id="number">
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职要求</td>
                                	<td>
                                    	<input type="text" placeholder="请输入兼职要求" value="" name="deRequest" id="deRequest">
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职报酬</td>
                                    <td>
                                                <input type="text" placeholder="请输入报酬" value="" id="salary" name="salary">
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职时间</td>
                                    <td>
                                                <input type="text" placeholder="请输入时间" value="" id="time" name="time">
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职描述</td>
                                	<td>
                                    	<input type="text" placeholder="请输入兼职内容" value="" name="detail" id="detail">
                                    </td>
                                </tr>
                            </tbody></table>


                            </tbody></table>




                            <table>
                            	<tbody>

                                <tr>
                                	<td width="25"></td>
                                	<td colspan="2">
                                    	<input type="submit" value="发布" id="jobPreview" class="btn_32">
                                    	<input type="text" id="ggg" style="display:none">
                                    	<input type="button" value="取消" id="formSubmit" class="btn_32" name="button">
                                    </td>
                                </tr>
                         	</tbody></table>
                        </form>
                    </dd>
                </dl>
            </div><!-- end .content -->


<div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" >
		<div class="modal-content" style="color:#666">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					评价
				</h4>
			</div>
			<div class="modal-body">
				 <div id="box">
                     <h4>我的评分</h4>
                     <div class="cont">
                         <div id="myPoint">
                             <span><big>5</big><small>.0</small></span>
                                  <div>
                                      <img src="style/js/statics/star5.gif" />
                                          <em>(合格)</em>
                                  </div>
                         </div>

                         <div id="doPoint">
                         <p>请点击以下星级进行评分：综合评分=(工作态度+工作效率+完成情况)/3</p>
                         <table cellspacing="0" cellpadding="0" border="0">
                             <tbody>
                                 <tr>
                                     <th>工作态度：</th>
                                     <td><span class="star5" id="item1" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td>
                                      <td><strong>5</strong> <em>(合格)</em></td>
                                 </tr>
                                 <tr>
                                     <th>工作效率：</th>
                                     <td><span class="star5" id="item2" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td>
                                     <td><strong>5</strong> <em>(合格)</em></td>
                                 </tr>
                                 <tr>
                                     <th>完成情况：</th>
                                     <td><span class="star5" id="item3" v="5"><small>1</small><small>2</small><small>3</small><small>4</small><small>5</small><small>6</small><small>7</small><small>8</small><small>9</small><small>10</small></span></td>
                                     <td><strong>5</strong> <em>(合格)</em></td>
                                 </tr>
                             </tbody>
                         </table>
                     </div>
                     <form id="form1" name="form1" >
                        <input id="pointV1" type="hidden" value="5" name="pointV1" />
                        <input id="pointV2" type="hidden" value="5" name="pointV2" />
                        <input id="pointV3" type="hidden" value="5" name="pointV3" />
                        <input id="pointV4" type="hidden"  name="pointV4" />
                        <label><h3>评论内容:</h3></label>
                        <textarea name="pj" id="pj" rows="3" cols="20"></textarea>
                     </form>
                 </div>
            </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary" onclick="grade()">
					评价
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

<div>
	<div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    	<div class="modal-dialog" >
    		<div class="modal-content" style="color:#666">
    			<div class="modal-header">
    				<h4 class="modal-title" id="userModalLabel">
    					申述
    				</h4>
    			</div>
    			<div class="modal-body">
    				 <form class="form-horizontal" role="form">
                     	<div class="form-group">
                     		<label for="stuAllege" class="col-sm-2 control-label">申述原因</label>
                     		<div >
                     			<textarea class="form-control" rows="1" placeholder="请输入申述原因" id="stuAllege" style="width:465px;font-size:15px"></textarea>
                     			<span class="error" style="display:none;margin-left:100px;" id="beError"></span>
                     		</div>
                     	</div>
                     	<div class="form-group">
                     		<label for="stuAllegeText" class="col-sm-2 control-label">描述</label>
                     		<div >
                     			<textarea class="form-control" rows="3" placeholder="请输入详细描述" id="stuAllegeText" style="width:465px;font-size:15px"></textarea>
                     			<span class="error" style="display:none;margin-left:100px;" id="beError1"></span>
                     		</div>
                     	</div>
                     <input id="pointId" type="hidden"  name="pointId" />
                     <input id="pointEmail" type="hidden"  name="pointEmail" />
                     </form>
    			</div>
    			<div class="modal-footer">
    				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
    				</button>
    				<button type="button" class="btn btn-primary" onclick="stuAllege()">
    					申述
    				</button>
    			</div>
    		</div><!-- /.modal-content -->
    	</div><!-- /.modal -->
    	</div>
</div>
<script>
function grade(){
var tot = parseInt($("#pointV1").val())+parseInt($("#pointV2").val())+parseInt($("#pointV3").val());
tot = (tot/3).toFixed(1);
$.post("appraiseStu",{id:$("#pointV4").val(),stuGrade:tot.toString(),stuText:$("#pj").val()},function(response){
if(response.tip=true){
    alert("评价成功");
    $("#myModal").modal('hide');
    disApply();
}else{
    alert("评价失败");
    $("#myModal").modal('hide');
    disApply();
}
});

}

function stuAllege(){
if($("#stuAllege").val()==null || $("#stuAllege").val().length<=0){
$("#beError").show();
$("#beError").html("请输入申述原因");
}else if($("#stuAllegeText").val()==null || $("#stuAllegeText").val().length<=0){
      $("#beError").hide();
      $("#beError1").show();
      $("#beError1").html("请输入描述");
      }else{
          $("#beError1").hide();
          $.post("comAllege",{allId:$("#pointId").val(),email:email,allEmail:$("#pointEmail").val(),allReason:$("#stuAllege").val(),allText:$("#stuAllegeText").val()},
          function(response){
          if(response==true){
          alert("成功");
          $("#userModal").modal('hide');
          $("#stuAllege").val("");
          $("#stuAllegeText").val("");
          disApply();
          }
          })
      }
}
</script>
<!------------------------------------- end ----------------------------------------->
<!-- <script type="text/javascript" src="style/js/tinymce.min.js"></script>

<!-- old -->
<script src="style/js/jquery.tinymce.js" type="text/javascript"></script>

<!-- end old -->

<script src="style/js/job8.min.js" type="text/javascript"></script>





			<div class="clear"></div>
			<input type="hidden" value="c29d4a7c35314180bf3be5eb3f00048f" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->


<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>