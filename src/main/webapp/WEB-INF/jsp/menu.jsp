<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page
	import="org.springframework.security.core.context.SecurityContextHolder"%>

<c:url value="/" var="homeUrl" />
<c:url value="user" var="userUrl" />
<c:url value="admin" var="adminUrl" />
<c:url value="logout" var="logoutUrl" />

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.html">Admin Panel - Bem vindo:
			<span id="username"><%=SecurityContextHolder.getContext().getAuthentication()
					.getName()%></span>!
		</a>
	</div>
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<li class="active"><a href="${homeUrl}">Home</a>
			<li><a href="${userUrl}"><i class="fa fa-tasks"></i> User</a></li>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="${adminUrl}"><i class="fa fa-globe"></i> Admin</a></li>
			</sec:authorize>
			<li><a href="${logoutUrl}"><i
						class="fa fa-power-off"></i> Log Out</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right navbar-user">
			<li class="dropdown messages-dropdown"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"><i
					class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b
					class="caret"></b></a>
				<ul class="dropdown-menu">
					<li class="dropdown-header">2 New Messages</li>
					<li class="message-preview"><a href="#"> <span
							class="avatar"><i class="fa fa-bell"></i></span> <span
							class="message">Security alert</span>
					</a></li>
					<li class="divider"></li>
					<li class="message-preview"><a href="#"> <span
							class="avatar"><i class="fa fa-bell"></i></span> <span
							class="message">Security alert</span>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
				</ul></li>
			<li class="dropdown user-dropdown"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"><i
					class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
					<li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
					<li class="divider"></li>
					<li><a href="${logoutUrl}">Logout</a><i
						class="fa fa-power-off"></i> Log Out</a></li>
				</ul></li>
		</ul>
	</div>
</nav>