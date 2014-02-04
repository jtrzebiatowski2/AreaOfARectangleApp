<%-- 
    Document   : AreaResult
    Created on : Jan 27, 2014, 11:17:21 PM
    Author     : J-Tron
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

     <% 
            DecimalFormat df = new DecimalFormat("#.##");
            
            double areaOfRectangle = (Double)request.getAttribute("areaOfRectangle");
            double length = (Double)request.getAttribute("length");
            double width = (Double)request.getAttribute("width");
            double areaOfCircle = (Double)request.getAttribute("areaOfCircle");
            double thirdSideOfTriangle = (Double)request.getAttribute("thirdSideOfTriangle");
            double radius = (Double)request.getAttribute("radius");
            double sideOne = (Double)request.getAttribute("sideOne");
            double sideTwo = (Double)request.getAttribute("sideTwo");
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
                height: 425px;
                text-align: center;
                background-color: black;
                margin-left:auto;
                margin-right:auto;
                margin-top:auto;
                margin-bottom:auto;
                
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
                padding-top:15px; 
                text-align: left;
                display:inline-block;
            }
            .widthSpan{
                padding-top: 35px; 
                padding-right:275px; 
                text-align: left; 
                display:inline-block
            }
            .output{
                color: aqua;
            }
        </style>
        
    </head>
    
    <body class="mathBackground">
        <div class="mathDiv">
            <h1>Your Rectangle With Dimensions</h1>
            <div class="rectangle">
                <span class="widthSpan">
                    <h2>Width= <fmt:formatNumber type = "number" maxFractionDigits = "5" value = "${width}" /></h2>
                </span>
                <span class="lengthSpan">
                    <h2>Length= <fmt:formatNumber type = "number" maxFractionDigits = "5" value = "${length}" /></h2>
                </span>
            </div>
        <h1 class="output">Has an Area of <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${areaOfRectangle}" /> units²</h1>
        <br>
        </div>
        <div class="mathDiv"><h1>Your circle with radius <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${radius}"/> units
                <br>
                <img src = "radius.jpg">
                <br>
                <span style="padding-left:140px; padding-right:30px; background-color: white; width: 250px; height: 20px; margin-left:auto; margin-right: auto; text-align:center; color:black;">
                    <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${radius}"/></span>
                    <br> <h1 class = "output">Has an Area of <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${areaOfCircle}" /> units²</h1>
            </h1>
        </div>
        <div class="mathDiv">
            <h1>Your Triangle with Side One of <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${sideOne}" /> units 
                        <br> and Side Two of <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${sideTwo}" /> units
                        <img src="triangle.jpg">
                        <br><h1 class="output">Has a Third Side Equal to <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${thirdSideOfTriangle}" /> units</h1>
            </h1>
            <br>
            <p><a style="color: skyblue; background-color: black; "href="index.html"><h2>Enter Different Dimensions<h2></a>
        </div>    
        <br>
    </body>
    
</html>
