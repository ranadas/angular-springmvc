'use strict';
console.log("in Angular Controller js!");

app.controller('IndexPageController', function ($scope, $http) {
    console.log(" in IndexPageController");

    // 1. will put greeting to the whole scope.
    //$scope.greeting = "hello there";
    //$scope.content = "hello there!!!";


    // 2. put greetings to this controller only
    //this.greeting = {id: 'xxx', content: 'Hello World!'}


    //3. get froa service
    var self = this;
    $http.get('/resource/').then(function (response) {
        self.greeting = response.data;
    });
});