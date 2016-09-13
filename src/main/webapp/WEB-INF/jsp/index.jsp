<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8"/>
    <title>Bootstrap jsp</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/styles.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
</head>

<body>
<div class="container">
    <br/>

    <div class="container">
        <div id="something"></div>
        <div id="displaycan"></div>
    </div>

    <div class="canvas1" id="canvas1">
        <div class="row" align="center">
            <form action=""></form>
            <label for="input1"></label>
            <input type="text" name="input1" id="input1" class="form-control">
            <input type="button" name="Save" value="Save" class="btn btn-info">
        </div>
    </div>
    <br/>
    <div class="canvas2">
        <div class="row" align="center">
            <input type="button" id="b1" name="Save1" value="One" class="btn btn-primary">
            <input type="button" id="b2" name="Save2" value="Two" class="btn btn-primary">
            <input type="button" id="b3" name="Save3" value="Three" class="btn btn-primary">
            <div>
                <table id="records_table" class="table table-bordered">
                    <thead class="thead-inverse">
                    <tr>
                        <th>#</th>
                        <th>User</th>
                        <th>email</th>
                    </tr>
                    <tbody></tbody>
                </table>
            </div>
        </div>
    </div>
    <br/>
    <div class="canvas3" id ="canvas3">
        <div class="row" align="center">
            <div class="col-lg-6">
                <label for="input3"></label>
                <input type="text" name="input3" id="input3" class="form-control">
            </div>
        </div>
    </div>
    <br/>
</div>


<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/js/custom.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        console.log("in index js, showing hiding!!");

        $(document).on("click", "button.remove" , function() {
            //$(this).parent().remove();
            console.log("%%%%%%  "+$(this).text() + " "+$(this).val());
        });

        var getJsonAndCreateTable = function () {
            $.get("datas", function(data, status){
                console.log("Data: " + data + "\nStatus: " + status);

                $('#records_table tbody').empty();
                var trHTML = '';
                var jdATA = JSON.parse(data);
                $.each(jdATA, function (i, item) {
                    //trHTML += '<tr><td>' + item.rank + '</td><td>' + item.user + '</td><td>' + item.email + '</td></tr>';
                    trHTML +="<tr>" + "<td>" + item.rank + "</td><td>" + item.user + "</td><td>" + item.email + "</td>"
                                    +"<td> <button id=\"edit\" class='remove' value="+item.rank+"> Edit</button></td>"+
                            +"</tr>";
                });
                $('#records_table').append(trHTML);

            });
        };

        $('#b1').click(function (e) {
            dispplayFunction("create");
        });
        $('#b2').click(function (e) {
            dispplayFunction("modify");
            getJsonAndCreateTable();

        });
        $('#b3').click(function (e) {
            dispplayFunction("all");
        });

        var usr = '${user}';
        var jsonObj = JSON.parse(usr);
        var currentUser = jsonObj.user;
        var currentDisplayCanvas = jsonObj.displayCanvas;
        console.log("Setting " + currentUser);
        document.getElementById('something').innerHTML = "<strong>Welcome back :</strong>" + currentUser;

        var inp1 = document.getElementById('input1');
        inp1.value = currentUser;
        var inp2 = document.getElementById('input3');
        inp2.value = currentUser;
        dispplayFunction(currentDisplayCanvas);

    });

</script>
</body>

</html>