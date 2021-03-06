/**
 * GoogleCharts Class
 * @description Functions written by developers
 * @author Ahmed Sharaf (sharaf.developer@gmail.com)
 * @copyright (c) 2015 Digitree (http://digitreeinc.com), All Right Reserved.
 * @version 1.0.0
 */

/**
 * Global Namespace
 * @type {Object}
 */
var GoogleCharts = GoogleCharts || {};

/**
 * Runs when document is ready
 * @author Ahmed Sharaf (sharaf.developer@gmail.com)
 */
GoogleCharts.onReady = function () {
    //alert('Hello');
    GoogleCharts.mainInit();
};

/**
 * Re Initialize some components after ajax event.
 * @author Ahmed Sharaf (sharaf.developer@gmail.com)
 * @todo Find more smart solution
 */
GoogleCharts.reInit = function () {};

/**
 * Initialize main components required to run the application
 * @author Dalia Atef (dahliaatef@hotmail.com)
 */
GoogleCharts.mainInit = function () {

	var key = 'AIzaSyDpomYsFqteQiRvF1o5rgLVYH82cv4y3g0';
    google.charts.load('upcoming', {'packages': ['corechart', 'geochart'], mapsApiKey: key});

};

/**
 * Draw cirle-type chart 
 * @param data
 * @param title
 * @param div_id 
 * @author Dalia Atef (dahliaatef@hotmail.com)
 */
GoogleCharts.drawCircle = function (jsonTable, color, divId) {
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
              //title: title,
			  legend: { position: "bottom" },
              pieHole: 0.3,
			  chartArea:{left:0,top:0,width:"100%",height:"80%"},
			  width:400,
              height:400,
			  pieSliceText: 'label',
              backgroundColor: 'transparent',
			  //colors : ["#6600CC","#CC00CC","#CC0066","#CC0000","#CC6600","#CCCC00","#66CC00","#00CC00","#00CC66","#00CCCC","#0066CC","#FFCC66","#FFFF99","#003399","#000066"],
			  colors : clrs,
            };
        var chart = new google.visualization.PieChart(document.getElementById(divId));
        google.visualization.events.addListener(chart, 'ready', selectHandler);
        /*google.visualization.events.addListener(chart, 'load', function () {
            document.getElementById(divId).innerHTML = '<img src="' + chart.getImageURI() + '">';
          });*/
        chart.draw(data, options);
        function selectHandler() {
            $('.internal-content > div > div > div').css("margin","auto");
            $('.circleChart').prev().addClass("circleChart-title")
          }
    });
};



GoogleCharts.drawColumns = function (jsonTable, color, divId) {
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
            //title : title,
            //width: 800,
            //height: 400,
            bar: {groupWidth: "100%"},
            legend: { position: "none" },
            colors : clrs,
            backgroundColor: 'transparent',
			height:360,
            vAxis: {minValue:0, maxValue:100},
            animation:{
                duration: 6000,
                easing: 'out',
                startup:true,
              },
        };
        
        var chart = new google.visualization.ColumnChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};

GoogleCharts.drawStackedColumns = function (jsonTable, title, divId) {
    google.charts.setOnLoadCallback(function(){
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
            //title : title,
            //width: 800,
            //height: 400,
            bar: {groupWidth: "70%"},
            isStacked: true,
            backgroundColor: 'transparent',
			height:360,
			vAxis: {minValue:0, maxValue:1000},
            animation:{
                duration: 6000,
                easing: 'out',
                startup:true,
              },
        };
        
        var chart = new google.visualization.ColumnChart(document.getElementById(divId));
        chart.draw(data, options);
		//google.visualization.events.addListener(chart, 'ready', myReadyHandler);
    });
};



GoogleCharts.drawBars = function (jsonTable, color, divId) {
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
            //title : title,
            //width: 600,
            //height: 400,
            bar: {groupWidth: "25%"},
            legend: { position: "none" },
            //colors : ["#194D86","#699A36"],
			colors : clrs,
            backgroundColor: 'transparent',
			height:360,
			vAxis: {minValue:0, maxValue:1000},
            animation:{
                duration: 6000,
                easing: 'out',
                startup:true,
              },
        };
        
        var chart = new google.visualization.BarChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};

GoogleCharts.drawLine = function (jsonTable, color, divId) {
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
            //title : title,
            //curveType: 'function',
            legend: { position: 'bottom' },
            backgroundColor: 'transparent',
			height:360,
			colors : clrs,
        };
        
        var chart = new google.visualization.LineChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};

GoogleCharts.drawLineArea = function (jsonTable, color, divId) {
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
            //title : title,
            //colors : ["#66648C", "#FCBE8F"],
			colors : clrs,
            pointSize : 4,
            pointShape : 'diamond',
            backgroundColor: 'transparent',
            //curveType: 'function',
			height:360,
            legend: { position: 'bottom' }
        };
        
        var chart = new google.visualization.AreaChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};

GoogleCharts.drawAnnotations = function (jsonTable, color, divId){
    google.charts.load('current', {'packages':['annotationchart']});
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visulaization.DataTable(jsonTable);
        var options = {
            //title : title,
            //colors : ["#66648C", "#FCBE8F"],
			colors : clrs,
            displayAnnotations: true,
            backgroundColor: 'transparent',
			height:360,
        };
        
        var chart = new google.visualization.AnnotationChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};

GoogleCharts.drawBubble = function (jsonTable, color, divId) {
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
            //title : title,
            hAxis: {title: 'hour'},
            vAxis: {title: 'day'},
            backgroundColor: 'transparent',
			height:360,
			colors : clrs,
        };
        
        var chart = new google.visualization.BubbleChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};


GoogleCharts.drawMap = function (jsonTable, color, divId){
    google.charts.setOnLoadCallback(function(){
		var clrs;
		if(color == 'fb'){
			clrs = ['#314DA1', '#22356D', '#4066AB', '#25AAE1', '#70CAF2'];
		}else if(color == 'tw'){
			clrs = ['#22AAE2', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}else if(color == 'in'){
			clrs = ['#6D51A2', '#A4479A', '#E32B70', '#EF5351', '#FDC151'];
		}else if(color == 'yg'){
			clrs = ['#A42828', '#C52729', '#DC2C27', '#FAAD6C', '#FDC151'];
		}else if(color == 'ln'){
			clrs = ['#0975B5', '#286398', '#2E83C2', '#4AA0D8', '#55CAEE'];
		}
        var data = new google.visualization.DataTable(jsonTable);
        var options = {
			backgroundColor:{fill:'transparent'},
			height:480,
			colors : clrs,
			//colors : ["#6600CC","#CC00CC","#CC0066","#CC0000","#CC6600","#CCCC00","#66CC00","#00CC00","#00CC66","#00CCCC","#0066CC","#FFCC66","#FFFF99","#003399","#000066"],
        };
        
        var chart = new google.visualization.GeoChart(document.getElementById(divId));
        chart.draw(data, options);
    });
};



/**
 * Draw chart 
 * @param data
 * @param title, chart title
 * @param div_id, id of the div contaning the chart
 * @param shape, shape of the chart
 * @author Dalia Atef (dahliaatef@hotmail.com)
 */



$(document).ready(function () {
    GoogleCharts.onReady();
});

function myReadyHandler(){
	alert('done');
}
