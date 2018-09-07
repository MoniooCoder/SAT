<%-- 
    Document   : netsparker
    Created on : 05.Eyl.2018, 10:06:17
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
        int x = 0;

        String data[] = request.getParameterValues("id-url");
        if (data != null && data.length != 0) {
            out.println("You have selected: ");
            for (int i = 0; i < data.length; i++) {
                out.println(data[i]);
            }
        }
        if (data[x].equals(null)) {
            out.println("");
        }

        String dataurl[] = request.getParameterValues("id-url1");
        if (dataurl != null && dataurl.length != 0) {
            out.println("You have selected: ");
            for (int i = 0; i < dataurl.length; i++) {
                out.println(dataurl[i]);
            }
        }
        if (dataurl[x].equals(null)) {
            out.println("");
        }
        
        String dataurls[] = request.getParameterValues("id-url2");

        if (dataurls != null && dataurls.length != 0) {
            out.println("You have selected: ");
            for (int i = 0; i < dataurls.length; i++) {
                out.println(dataurls[i]);
            }
        }
        if (dataurls[x].equals(null)) {
            out.println("");
        }


    %>
</body>
</html>
