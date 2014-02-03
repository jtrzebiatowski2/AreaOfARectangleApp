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
                height: 475px;
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
                    Width= ${width}
                </span>
                <span class="lengthSpan">
                    Length= ${length}
                </span>
            </div>
        <h1>Has an Area of ${areaOfRectangle} units²</h1>
        <br>
        </div>
        <div class="mathDiv">
            <h1>Your Circle With Radius ${radius}
                <br> <h1>Has an Area of ${areaOfCircle} units²</h1>
            </h1>
        </div>
        <div class="mathDiv">
            <h1>Your Triangle with Side One of ${sideOne} units 
                        <br> and Side Two of ${sideTwo} units
                        <br>Has a Third Side Equal to ${thirdSideOfTriangle} units
            </h1>
            <br>
            <p><a style="color: skyblue; "href="index.html"><h2>Enter Different Dimensions<h2></a>
        </div>    
        <br>
    </body>
    
</html>
