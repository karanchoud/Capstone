<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="yahoofinance.Stock"%>
<%@page import="yahoofinance.histquotes.HistoricalQuote"%> 
<%@page import="yahoofinance.histquotes.Interval"%>
<%@page import="model.ShareMarket" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
  
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    google.charts.load('current', {packages: ['corechart', 'line']});
    google.charts.setOnLoadCallback(drawBasic);

    function drawBasic() {

          var data = new google.visualization.DataTable();
          //data.addColumn('number', 'time');
          data.addColumn('string', 'time');
          data.addColumn('number', 'highPrice');
          data.addColumn('number', 'lowPrice');
          //data.addColumn('number', 'open');
          //data.addColumn('number', 'close');
          
		<%
		Stock stock = (Stock) request.getAttribute("stockRequest"); //to be used when integrated with the system 
		ShareMarket shareMarket = new ShareMarket();
		
		stock = shareMarket.getSingleStock("JBH.AX"); //for testing purposes just get a stock directly
		
		
		//for(HistoricalQuote quote: stock.getHistory())
		for(int i = stock.getHistory().size() -1; i >=0; i--)	
		{
			
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			
			String date = dateFormat.format(stock.getHistory().get(i).getDate().getTime());
					
			double highPrice = stock.getHistory().get(i).getHigh().doubleValue();
			
			double lowPrice = stock.getHistory().get(i).getLow().doubleValue();
			
			double open = stock.getHistory().get(i).getOpen().doubleValue();
			
			double close = stock.getHistory().get(i).getClose().doubleValue();
			
			%>
			
			var date = "<%=date%>";
			
			var highPrice = <%=highPrice%>;
			
			var lowPrice = <%=lowPrice%>;
			
			var open = <%=open%>;
			
			var close = <%=close%>;
						
			data.addRows([
			              [date, highPrice,lowPrice]  
			            ]);
		<%	
		}
		%>
          
		  var title = "<%=stock.getName() + " " + stock.getSymbol()%>";
		
		
          var options = {
        	title: title,	  
            hAxis: {
              title: 'Time'
            },
            vAxis: {
              title: 'price'
            }
          };

          var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));

          chart.draw(data, options);
        }
    </script>



</head>
<body>
<div id="chart_div" style="width: 900px; height: 500px"></div>



</body>
</html>