'use strict';
console.log("in Angular Controller js!");

app.controller('IndexPageController', function ($scope) {
    console.log(" in IndexPageController");
    /* Model */
    $scope.items = [
        {desc: 'Go shopping', done: false},
        {desc: 'Clean my room', done: true},
        {desc: 'Sleep', done: false}
    ];

    $scope.newItemDescription = '';

    /* Events */
    $scope.addItem = function () {
        $scope.items.push({
            desc: $scope.newItemDescription,
            done: false
        });
    };

    $scope.removeItem = function (index) {
        $scope.items.splice(index, 1);
    };

    var employee={firstName:'Ran',lastName:'Da',contacts:'Du'}
    var employeeList = [];

    $scope.employee = employee;
});