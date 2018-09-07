<%-- 
    Document   : index
    Created on : 02.Eyl.2018, 13:46:18
    Author     : user
--%>  

<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="org.glassfish.jersey.client.ClientResponse"%>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@page import="java.io.BufferedReader" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.InputStreamReader" %>
<%@page import="java.io.InputStream" %>
<%@page import=" com.sun.jersey.api.client.Client"%>

<%@page import ="java.io.IOException"%>

<%@page import ="java.util.ArrayList"%>

<%@page import ="javax.servlet.ServletException"%>

<%@page import ="javax.servlet.annotation.WebServlet"%>

<%@page import ="javax.servlet.http.HttpServlet"%>

<%@page import ="javax.servlet.http.HttpServletRequest"%>

<%@page import ="javax.servlet.http.HttpServletResponse"%>
<%@page import="sun.misc.BASE64Encoder"%>

<%@page import="com.sun.jersey.api.client.WebResource"%>

<%@page import="com.sun.jersey.api.client.Client"%>


<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <link rel="shortcut icon" href="jira.ico" />
    <title>SAT</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script>
        setTimeout(function () {
            document.location = "C:\Users\user\Documents\NetBeansProjects\src\main\webapp\index.jsp";
        }, 1000); // <-- this is the delay in milliseconds
    </script>
    <style>

        body{
            background-image: url(  atlassian-justinmind-integration-header-promo-1.png);
            background-repeat: repeat-x;
            align-content:  space-around;
            background-color:blueviolet;

        }    
        h1{text-align: center ;color:window;font-size: 30px}
        p{color: red;}

        .control{
            text-align: left;
            padding: 65px 0px;
            font-size: 17px;
            margin:  inherit;


        }
        .button{
            background-color:  mediumslateblue;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            padding: 0px 15px;
        }
        footer {
            padding: 25px 0 15px;
            background: #3d3d3d;
            color: #999999;
            font-size: 0.875em;
            overflow: hidden;
        }
        footer a {
            color: inherit !important;
        }
        footer .container div:nth-child(1),
        footer .container div:nth-child(3) {
            padding-top: 15px;
        }
        footer .container div:nth-child(2) {
            text-align: center;
        }
        footer .container div:nth-child(3) {
            text-align: right;
        }
        footer .sm {
            color: #cccccc;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: #3d3d3d;
            position: relative;
            display: inline-block;
            margin-right: 10px;
        }
        footer .sm:hover {
            background: #2F8BC4;
            color: #ffffff;
        }
        footer .sm span {
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            display: inline-table;
            margin: auto;
            width: 100%;
            text-align: center;
            line-height: 1em;
        }
        footer .container div:nth-child(1),
        footer .container div:nth-child(3) {
            padding-top: 12px !important;
        }




    </style>
</head>

<body>

    <h1> Jira Insight/Security Scanner/FaradaySEC</h1>



<div class="control">
    <label for="url">Enter an https:// URL:</label>
    <input type="url" name="url" id="url"
           placeholder="https://example.com"
           pattern="https://.*" size="28" required />
</div>



<!--Pull Data Button -->
<form action="http://192.168.40.139/browse/RPR-45?jql=" class="button">
    <input href="#" type="submit" value="Pull Data" class="button" />
</form>




<!--Checkboxes of Urls  -->
<form action="netsparker.jsp" method="get">
    <input type="checkbox" name="id-url" value="Url"> <input type="url" name="id-url"pattern="https://.*" size="28" />  <br>
        <input type="checkbox" name="id-url1" value="Url"> <input type="url" name="id-url1"pattern="https://.*" size="28" /> <br>
            <input type="checkbox" name="id-url2" value="Url"> <input type="url" name="id-url2" pattern="https://.*" size="28"/> <br>
                <!--Push Data button -->
                <input  name="id-url" type="submit" class="button" />
                </form>   




                <!--Get Report Button -->
                <form action="http://192.168.40.139/secure/RapidBoard.jspa?rapidView=1" class="button">
                    <input href="#" type="submit" value="Get Report" class="button" />
                </form>




                </body>
                </html>

