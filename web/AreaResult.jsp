<%-- 
    Document   : AreaResult
    Created on : Jan 27, 2014, 11:17:21 PM
    Author     : J-Tron
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
     <% 
            DecimalFormat df = new DecimalFormat("#.##");
            
            double area = (Double)request.getAttribute("area");
            double length = (Double)request.getAttribute("length");
            double width = (Double)request.getAttribute("width");
        
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Calculator Result</title>
        <style>
            .mathBackground{
                background-image: url('mathWallpaper.png');
                text-align: center;
            }
            .mathDiv{
                margin-top: 30px;
                padding-top: 20px;
                border-style: ridge;
                border-color: white;
                border-width: 6px;
                width: 600px;
                height: 475px;
                text-align: center;
                background-color: black;
                margin-left:auto;
                margin-right:auto;
                
            }
            h1{
                color: white;
            }
            h2{
                color:black;
            }
            .rectangle{
                margin-top: 10px;
                width: 300px;
                height: 200px;
                margin-left: auto;
                margin-right: auto;
                background-color: white;
                display:inline-block;
            }
            .lengthSpan{
                padding-top:60px; 
                text-align: left;
                display:inline-block;
            }
            .widthSpan{
                padding-top: 100px; 
                padding-right:275px; 
                text-align: left; 
                display:inline-block
            }
        </style>
        
    </head>
    <body class="mathBackground">
        <div class="mathDiv">
            <h1>Your Rectangle With Dimensions</h1>
            <div class="rectangle">
                <span class="widthSpan">
                    Width=<% out.print(width);%>
                </span>
                <span class="lengthSpan">
                    Length=<% out.print(length);%>
                </span>
            </div>
        <h1>Has an Area of <% out.print(df.format(area));%> units²</h1>
        <br>
        <p><a href="index.html"><h1>Enter Different Dimensions<h1></a>
        </div>
    </body>
    
</html>
