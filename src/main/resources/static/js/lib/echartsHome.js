var version = '2.2.7';
var sp = location.pathname.lastIndexOf('/');
var ep = location.pathname.lastIndexOf('.html');
var curPage = sp < ep ? location.pathname.slice(sp + 1, ep) : 'index';
var enVersion = location.href.indexOf('-en.html') != -1;

var activeClass = {};
var loc = {};
var forkWidth = 149;
curPage = curPage.replace('-en', '');
var isExample = false;
switch (curPage) {
    case 'index' :
        activeClass[curPage] = 'active';
        loc[curPage] = '.';
        loc.feature = '.';
        loc.example = '.';
        loc.doc = '.';
        loc.about = '.';
        loc.changelog = '.';
        loc.option = '.';
        loc.spreadsheet = '.';
        loc.start = '.';
        loc.img = '.';
        break;
    case 'feature' :
    case 'example' :
    case 'doc' :
    case 'option' :
    case 'spreadsheet' :
    case 'about' :
    case 'changelog' :
    case 'start' :
        activeClass[curPage] = 'active';
        loc.index = '..';
        break;
    default :
        isExample = true;
        forkWidth = 60;
        activeClass['example'] = 'active';
        var extSub = location.href.indexOf('extension') != -1 ? '../' : '';
        loc.index = extSub + '../..';
        loc.feature = extSub + '../../doc';
        loc.example = extSub + '../../doc';
        loc.doc = extSub + '../../doc';
        loc.about = extSub + '../../doc';
        loc.changelog = extSub + '../../doc';
        loc.option = extSub + '../../doc';
        loc.spreadsheet = extSub + '../../doc';
        loc.start = extSub + '../../doc';
        loc.img = extSub + '../../doc';
        break;
}

// Those pages only exist in echarts-www project,
// but not in http://ecomfe.github.io/echarts/ and doc in echarts project.
if (location.href.indexOf('.baidu.com') < 0) {
    loc.option = 'http://echarts.baidu.com/doc';
    loc.spreadsheet = 'http://echarts.baidu.com/doc';
}

$('#head')[0].innerHTML =
    '<div class="container">'
        + '<div class="navbar-header">'
          + '<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">'
            + '<span class="sr-only">Toggle navigation</span>'
            + '<span class="icon-bar"></span>'
            + '<span class="icon-bar"></span>'
            + '<span class="icon-bar"></span>'
          + '</button>'
          + '<a class="navbar-brand" href="http://echarts.baidu.com/index'
          + (enVersion ? '-en': '')
          + '.html">ECharts</a>'
        + '</div>'
        + '<a href="https://github.com/ecomfe/echarts" target="_blank">'
            + '<img id="fork-image" style="position:absolute;top:0;right:0;border:0;z-index:1000;width:' + forkWidth + 'px" src="'+ (loc.img || '.') + '/asset/img/fork.png" alt="Fork me on GitHub">'
        + '</a>'
        + '<div class="navbar-collapse collapse" id="nav-wrap">'
          + '<ul class="nav navbar-nav navbar-right" id="nav" style="max-width:100%;">'
            + (enVersion
            ? ('<li class="' + (activeClass.index || '') + '"><a href="' + (loc.index || '.') + '/index-en.html">Home</a></li>'
                + '<li class="' + (activeClass.feature || '') + '"><a href="' + (loc.feature || '.') + '/feature-en.html">Feature</a></li>'
                + '<li class="' + (activeClass.example || '') + '"><a href="' + (loc.example || '.') + '/example-en.html">Example</a></li>'
                // + '<li class="' + (activeClass.doc || '') + '"><a href="' + (loc.doc || '.') + '/doc-en.html">API & Doc</a></li>'
            )
            : ('<li class="' + (activeClass.index || '') + '"><a href="' + (loc.index || '.') + '/index.html">首页</a></li>'
                + '<li class="' + (activeClass.feature || '') + '"><a href="' + (loc.feature || '.') + '/feature.html">特性</a></li>'
                + '<li class="' + (activeClass.example || '') + '"><a href="' + (loc.example || '.') + '/example.html">实例</a></li>'
                // + '<li class="' + (activeClass.doc || '') + '"><a href="' + (loc.doc || '.') + '/doc.html">文档</a></li>'
            ))
            + '<li class="dropdown ' + (activeClass.doc || activeClass.option || '') + '">'
              + '<a href="#" class="dropdown-toggle" data-toggle="dropdown">' + (enVersion ? 'API & Doc' : '文档') + '<b class="caret"></b></a>'
              + '<ul class="dropdown-menu">'
                + '<li class=""><a href="' + (loc.doc || '.') + '/doc' + (enVersion ? '-en.html">Base Document' : '.html">参考手册') + '</a></li>'
                + '<li class=""><a href="' + (loc.option || '.') + '/option' + (enVersion ? '-en.html">Option Manual' : '.html">配置项查找工具') + '</a></li>'
              + '</ul>'
            + '</li>'
            + '<li class="dropdown ' + (activeClass.spreadsheet || '') + '">'
              + '<a href="#" class="dropdown-toggle" data-toggle="dropdown">' + (enVersion ? 'Tool' : '工具') + '<b class="caret"></b></a>'
              + '<ul class="dropdown-menu">'
                + '<li><a href="http://ecomfe.github.io/echarts-builder-web/">' + (enVersion ? 'Online Builder' : '在线构建工具') + '</a></li>'
                + '<li><a href="' + (loc.example || '.') + '/example/theme.html">' + (enVersion ? 'Theme Preview' : '皮肤主题预览') + '</a></li>'
                + '<li><a href="' + (loc.example || '.') + '/example/themeDesigner.html">' + (enVersion ? 'Theme Designer' : '皮肤主题设计工具') + '</a></li>'
                + '<li><a href="http://ecomfe.github.io/echarts-map-tool/">' + (enVersion ? 'Map Data Tool' : '地图数据生成工具') + '</a></li>'
                + '<li><a href="' + (loc.spreadsheet || '.') + '/spreadsheet' + (enVersion ? '-en.html">Spreadsheet Data Tool' : '.html">表格数据转换工具') + '</a></li>'
                + (enVersion ? '' : '<li><a target="_blank" href="http://study.163.com/course/courseMain.htm?courseId=1016007">视频教程</a></li>')
              + '</ul>'
            + '</li>'
            /*
            + '<li class="dropdown">'
              + '<a href="#" class="dropdown-toggle" data-toggle="dropdown">教学 <b class="caret"></b></a>'
              + '<ul class="dropdown-menu">'
                + '<li><a href="#">初学教程</a></li>'
                + '<li class="divider"></li>'
                + '<li class="dropdown-header">外部资源</li>'
                + '<li><a href="#"></a></li>'
                + '<li><a href="#"></a></li>'
              + '</ul>'
            + '</li>'
            */
            + '<li class="dropdown">'
              + '<a href="#" class="dropdown-toggle" data-toggle="dropdown">' + (enVersion ? 'Download' : '下载') + '<b class="caret"></b></a>'
              + '<ul class="dropdown-menu">'
                + '<li><a href="http://echarts.baidu.com/build/echarts-' + version + '.zip"> echarts-' + version + ' (from Baidu)</a></li>'
                + '<li><a href="https://github.com/ecomfe/echarts/archive/' + version + '.zip"> echarts-' + version + ' (from GitHub)</a></li>'
                + '<li><a href="http://echarts.baidu.com/build/echarts-m-1.0.0.zip"> echarts-m-1.0.0 (beta)</a></li>'
                + '<li><a href="http://echarts.baidu.com/x/build/echarts-x-0.2.0.zip"> echarts-x-0.2.0 </a></li>'
                + '<li class="divider"></li>'
                + (enVersion
                    ? '<li><a href="http://ecomfe.github.io/echarts/doc/changelog-en.html">Changelog</a></li>'
                    : '<li><a href="http://echarts.baidu.com/doc/changelog.html">Changelog</a></li>'
                )
              + '</ul>'
            + '</li>'
            //+ '<li><a href="http://echarts.baidu.com/build/echarts-' + version + '.rar">下载</a></li>'
            + (enVersion
               ? ('<li class="' + (activeClass.about || '') + '"><a href="' + (loc.about || '.') + '/about-en.html">About Us</a></li>')
               : ('<li class="' + (activeClass.about || '') + '"><a href="' + (loc.about || '.') + '/about.html">关于我们</a></li>')
            )
            + '<li><a href="javascript:void()" onclick="changeVersion()">' + (enVersion ? '中文' : 'English') + '</a></li>'
          + '</ul>'
        + '</div><!--/.nav-collapse -->'
      + '</div>';

function back2Top() {
    $("body,html").animate({scrollTop:0},1000);
    return false;
}

function changeVersion() {
    if (!isExample) {
        window.location = curPage + (enVersion ? '' : '-en') + '.html'
    }
    else {
        window.location = curPage + '.html' + (enVersion ? '' : '#-en');
        if (enVersion) {
            window.location.hash = window.location.hash.replace('-en', '');
        }
        window.location.reload();
    }
}

if (document.location.href.indexOf('local') == -1) {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?4bad1df23f079e0d12bdbef5e65b072f";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
}

function fixFork () {
    var navMarginRight = 0;
    var bodyWidth = document.body.offsetWidth;
    var contnetWidth = $('#nav-wrap')[0].offsetWidth;
    if (bodyWidth < 1440) {
        navMarginRight = 150 - (bodyWidth - contnetWidth) / 2;
    }
    $('#nav')[0].style.marginRight = navMarginRight + 'px';
    $('#fork-image')[0].style.width = (document.body.offsetWidth < 768 ? 1 : forkWidth) + 'px';
};
fixFork();
$(window).on('resize', fixFork);