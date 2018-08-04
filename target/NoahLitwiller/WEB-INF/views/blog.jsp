<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">

<head>
	<title>Blog</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/blog-style.css">
</head>

<body>

	<div class="container">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<h1 id="blogTitle">${model.getName()}</h1>
		</div>

		<div>
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<c:forEach var="blogEntry" items="${model.getEntries()}">
					<c:if test="${blogEntry.getType()=='text'}">
					<div class="panel panel-primary" id="${blogEntry.getPostId()}"> 	
							<h2 class="panel-heading">${blogEntry.getTitle()}</h2>
							<div class="panel-body">
							 <h5>${blogEntry.getSubtitle()}, ${blogEntry.getPublishedDateString()}</h5>
					         <img src="${blogEntry.getImageRef()}"/>
					         <p>${blogEntry.getContent()}</p>
					        </div>
				   </div>
				   </c:if>	
				</c:forEach>
			</div>
			
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<h1 id="tutorialTitle">Tutorials</h1>
		</div>
		
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<c:forEach var="blogEntry" items="${model.getEntries()}">
					<c:if test="${blogEntry.getType()=='tutorial'}">
					<div class="panel panel-primary" id="${blogEntry.getPostId()}"> 	
							<h2 class="panel-heading">${blogEntry.getTitle()}</h2>
							<div class="panel-body">
							 <h5>${blogEntry.getSubtitle()}, ${blogEntry.getPublishedDateString()}</h5>
					         <img src="${blogEntry.getImageRef()}"/>
					         <p>${blogEntry.getContent()}</p>
					        </div>
				   </div>
				   </c:if>	
				</c:forEach>
			</div>			
			
			 <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 panel panel-primary" id="postsSidebar" data-spy="affix">
			    <h3 class="panel-heading"><a id="blogLink" href="#blogTitle">Blog Posts</a></h3>
				<c:forEach var="blogEntry" items="${model.getEntries()}">
					<c:if test="${blogEntry.getType()=='text'}">
						<a data-toggle="tooltip" data-placement="left" title="Published ${blogEntry.getPublishedDateString()}" href="#${blogEntry.getPostId()}">${blogEntry.getTitle()}</a><br>
					</c:if>
					
				</c:forEach>
				<h3 class="panel-heading"><a id="tutorialLink" href="#tutorialTitle">Tutorials</a></h3>
				<c:forEach var="blogEntry" items="${model.getEntries()}">
					<c:if test="${blogEntry.getType()=='tutorial'}">
						<a data-toggle="tooltip" data-placement="left" title="Published ${blogEntry.getPublishedDateString()}" href="#${blogEntry.getPostId()}">${blogEntry.getTitle()}</a><br>
					</c:if>
				</c:forEach>
			 </div>
		
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<h1><a id="homeLink" href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-home"></span> Return to the home page</a></h1>
		</div>
	</div>
</div>

<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>

</body>
</html>

<!-- 	
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
				<div class="card">
					<h2>Right col section 1</h2>
					<div class="img" style="height: 100px;">Image</div>
					<p>Some text</p>
				</div>
				<div class="card">
					<h3>Right col section 2</h3>
					<div class="img">Image</div>
					<br>
					<div class="img">Image</div>
					<br>
					<div class="img">Image</div>
				</div>
				<div class="card">
					<h3>Right col section 3</h3>
					<p>Text</p>
				</div>
			</div>
-->
		
	
