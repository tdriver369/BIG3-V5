var app = angular.module('myApp', []);
app.controller('homepage', function($scope, $http) {
	$scope.logButton = true;
	$scope.confirm = false;

	$scope.changeLog = function(){
		$scope.logButton = true;
		$scope.signButton = false;
		$scope.confirm = false;
	}

	$scope.changeSign = function(){
		$scope.logButton = false;
		$scope.signButton = true;
		$scope.confirm = true;
	}
	$scope.hi = function(){
		var user = $scope.username;
        var pass = $scope.password;
		//$scope.hi2 = "Hi";
		
		$http.get('TheBig3', 
				{params: {"username" : user, "password" : pass}})
        .then(function(response) {
        	$scope.hi4 = "GOT IT BOI";
        });
        
	}
});
