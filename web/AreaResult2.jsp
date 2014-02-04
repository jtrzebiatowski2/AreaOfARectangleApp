<%-- 
    Document   : AreaResult2
    Created on : Feb 4, 2014, 7:46:54 AM
    Author     : J-Tron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Area Calculations</title>
        
        <script type="text/javascript">
            function showFields(){
                $(rectangleArea).addClass("visible");
                $(circleArea).addClass("visible");
                $(thirdSideOfTriangle).addClass("visible");
                $(h2).addClass("visible");
            }
        </script>
        
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
            .submitButton{
                background-color: white;
                color:black;
                border-style:ridge;
                border-width: 4px;
                border-color:appworkspace;
                width:150px;
                height:40px;
                font-size:16px;
            }
            
            .submitButton:hover{
                cursor:pointer;
                background-color: blue;
                border-color:yellow;
                border-width: 10px;
            }
            
            .textArea:hover{
                cursor:crosshair;
                background-color: blue;
                border-color: yellow;
                border-width: 5px;
               
            }
            h1{
                color: white;
            }
            h2{
                color:blue;
            }
            .visible{
                visibility:visible;
            }
            .hidden{
                visibility: hidden;
            }
            
        </style>
    </head>
    <body class="mathBackground">
         <form id ="areaInput" name="areaInput" method="POST" action="calculateArea2">
       <div class="mathDiv"><h1>Enter the Dimensions of the Rectangle</h1>
        <h2>Length</h2><input type ="text" class="textArea" id="length" name="length">
        <br>
        <h2>Width</h2><input type ="text" class="textArea" id="width" name="width">
        <br>
        <h2 class="hidden">The area of the Rectangle is:</h2>
        <input type ="text" class="hidden" id="rectangleArea" name="rectangleArea" value="${areaOfRectangle}">
        </div>
        <div class="mathDiv"><h1>Enter the Radius of the Circle</h1>
        <h2>Radius</h2><input type ="text" class="textArea" id="radius" name="radius">
        <br>
        <h2 class="hidden">The area of the circle is: </h2>
        <input type ="text" class="hidden" id="circleArea" name="circleArea" value ="${areaOfCircle}">
        </div>
        <div class="mathDiv"><h1>Enter the Sides of the Triangle</h1>
        <h2>Side One</h2><input type ="text" class="textArea" id="sideOne" name="sideOne">
         <h2>Side Two</h2><input type ="text" class="textArea" id="sideTwo" name="sideTwo">
         <br>
         <h2 class="hidden">The Length of the Third Side is:</h2>
         <input type ="text" class="hidden" id="circleArea" name="circleArea" value = "${thirdSideOfTriangle}">
        </div>
            <br><br>
            <input id="areaSubmit" name="areaSubmit" type="submit" value="Make Calculations" class="submitButton" onsubmit="return showFields()">
         </form>
    </body>
</html>
