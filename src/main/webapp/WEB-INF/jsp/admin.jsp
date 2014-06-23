<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Light Way Admin</title>

    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/css/local.css" />

    <script type="text/javascript" src="resources/css/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="resources/css/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div id="wrapper">
	     <jsp:include page="menu.jsp" />

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Admin</h3>
                        </div>
                        <div class="panel-body">
                   			content Admin
                        </div>
                    </div>
                </div>
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
</div>
</body>
</html>