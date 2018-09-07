<%-- 
    Document   : insightpull
    Created on : 05.Eyl.2018, 10:28:20
    Author     : user
--%>

<%@page import="com.google.gson.reflect.TypeToken"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map"%>
<%@page import="com.google.gson.JsonElement"%>
<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.util.HashMap"%>
<%@page import="javax.ws.rs.client.Entity.json
        (Object)"%>
<%@page import="com.atlassian.jira.rest.client.internal.json.JsonParser"%>
<%@page import="org.codehaus.jettison.json.JSONArray"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import ="com.sun.jersey.api.client.ClientResponse" %>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@page import="java.io.BufferedReader" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.FileNotFoundException" %>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileReader"%>
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


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>

    <%
        String url = "http://192.168.40.139/rest/insight/1.0/iql/objects";

        String name = "volkan";

        String password = "volkan";

        String authString = name + ":" + password;

        String authStringEnc = new BASE64Encoder().encode(authString.getBytes());

        System.out.println("Base64 encoded auth string: " + authStringEnc);

        Client restClient = Client.create();

        WebResource webResource = restClient.resource(url);

        ClientResponse resp = webResource.accept("application/json")
                .header("Authorization", "Basic " + authStringEnc)
                .get(ClientResponse.class);

        if (resp.getStatus() != 200) {

            System.err.println("Unable to connect to the server");

        }

        String output = "";

        output = resp.getEntity(String.class);

        Map<String, Object> retMap = new Gson().fromJson(
                output, new TypeToken<HashMap<String, Object>>() {
                }.getType());


        JSONObject jsonObject = new JSONObject(output);

        JSONArray tsmresponse = (JSONArray) jsonObject.get("objectEntries");

        ArrayList<String> list = new ArrayList<String>();

        for (int i = 0; i < tsmresponse.length(); i++) {

            list.add(tsmresponse.getJSONObject(i).getString("attributes"));
        }

        /*
        for(String attributes : list){
            if(attributes.startsWith("value")){
                list.add(attributes);
            }
            
        }
         */

    %>



</body>
</html>
