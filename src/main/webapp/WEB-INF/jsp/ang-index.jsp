<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="ranaAngApp">

<head >
    <meta charset="UTF-8"/>
    <title>Angular SPA </title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/styles.css" rel="stylesheet">

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.js"></script>

    <script src="/resources//angularjs/angular.js"></script>
</head>

<body>
<div class="form-horizontal" ng-controller="IndexPageController as home">
    <%--<p>The ID is {{greeting.id}}</p>--%>
    <%--<p>The content is {{greeting.content}}</p>--%>

    <p>The ID is {{home.greeting.id}}</p>
    <p>The content is {{home.greeting.content}}</p>
    <p>on {{home.greeting.date | date:'medium' }}</p>

</div>

<script src="/resources/js/ang-app.js"></script>
<script src="/resources/js/ang-controller.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        console.log("in jquery ready!");
    });

</script>
</body>

</html>