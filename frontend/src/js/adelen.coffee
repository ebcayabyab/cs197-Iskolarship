momentum = angular.module "Momentum.controllers", []

momentum.controller "ViewStudentController", ['$scope', '$http', ($scope, $http) ->
	$scope.getDetails = ->
		$http.get("/api/getstudentdetails/#{$scope.data.personid}")
		.success (response) ->
			$scope.data.lastname = response.split("_")[0]
			$scope.data.degreeprogram = response.split("_")[1]
			$scope.data.reason = response.split("_")[2]
			alert "asasA"
		.error (response) ->
			alert response
			alert "There are no men"
		
]
