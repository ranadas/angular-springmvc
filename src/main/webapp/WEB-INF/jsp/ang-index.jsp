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
<div class="form-horizontal" ng-controller="IndexPageController">
    <h1>To-do List</h1>
    <%--<p>1 + 2 = {{1 + 2}}</p>--%>
    <ul>
        <li ng-repeat="item in items">
            {{item.desc}} <button ng-click="removeItem($index)">remove</button>
        </li>
    </ul>

    <p>
        <input type="text" ng-model="newItemDescription"/>
        <button ng-click="addItem()">Add</button>
    </p>

    <div class="form-group">
        <label class="control-label col-sm-2">First Name:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" style="width:200px" ng-model="employee.firstName" placeholder="Enter first name" />
        </div>
        <label class="control-label col-sm-2">Last Name:</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" style="width:200px" placeholder="Enter last name" ng-model="employee.lastName" />
        </div>
    </div>
</div>

<script src="/resources/js/ang-app.js"></script>
<script src="/resources/js/ang-controller.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        console.log("in Angular index jquery js!");
    });

</script>
</body>

</html>