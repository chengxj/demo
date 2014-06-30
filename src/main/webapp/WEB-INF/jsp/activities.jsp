<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="include/global.jspf" %>
<c:set var="ngApp" value="app"/>
<c:set var="ngController" value="ctrl"/>
<%@include file="include/header.jspf" %>
	<div class="container">
		<p></p>		
		<div class="bs-example">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">demo实例</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-6">
	    					<div class="input-group">
	      						<input type="text" placeholder="title" ng-model="searchTerm" class="form-control">
	      						<span class="input-group-btn">
	        						<button class="btn btn-default" type="button" ng-click="searchActivities(searchTerm, 0)" >Search</button>
	      						</span>	      						
	    					</div>  					
	  					</div>
	  					<div class="col-lg-6">
		  					<div class="pull-right">
		  						<span style="padding-top:15px;float:left">{{data.num | number}} Rows</span>
		  					</div>
	  					</div>  					
  					</div>				 					
					<table>
						<thead>
							<tr class="clickableRow">
								<td width="5%">#</td>
								<td width="25%">title</td>
								<td width="10%">type</td>
								<td width="10%">leader</td>
								<td width="15%">scenic_spots</td>
								<td width="15%">departure</td>
								<td width="20%">destination</td>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="Activities in data.activities" ng-click="linkRow(Activities.id)" onmouseover="style.backgroundColor='#fae5e5'" onmouseout="style.backgroundColor='' ">
								<td class="text-center">{{$index + 1}}</td>							
								<td class="text-left">{{Activities.title}}</td>
								<td class="text-left">{{Activities.type_enum}}</td>
								<td class="text-left">{{Activities.leader}}</td>
								<td class="text-left">{{Activities.scenic_spots}}</td>
								<td class="text-left">{{Activities.departure}}</td>
								<td class="text-left">{{Activities.destination}}</td>
							</tr>
						</tbody>
					</table>
					<ul class="pager">
					  	<li><a ng-click="getPage(0)">First</a></li>
					  	<li><a ng-click="previousPage()">Previous</a></li>
					  	<li><a ng-click="nextPage()">Next</a></li>
					  	<li><a ng-click="getPage(data.pageNum*10 - 10)">Last</a></li>
					  	<li>currentPage {{data.pageNum>0?index/10 + 1:0}}</li>
					  	<li>pageNum {{data.pageNum}}</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<script>
function pagination() {
	var obj = {firstPage:1, previousPage:1, currentPage:1, nextPage:1, lastPage:1, pageNum:1};
	return obj;
}

angular.module('app', ['ngResource'])
.factory('activityDAO', function($resource) {
	return {
				getActivities:function() {
					return $resource('/api/search_activities.json');
				}
		   };	
})
.controller('ctrl', ['$scope', 'activityDAO', 
	function($scope, activityDAO) {
	
		$scope.initPage = function() {
			$scope.searchActivities("", 0);
		};
		
		$scope.searchActivities = function(searchTerm, index) {
			$scope.index = index;
			$scope.search = searchTerm;
			activityDAO.getActivities().save({searchTerm:searchTerm, index:index}, function(data) {
				$scope.data = data;
			});
		};
		
		$scope.previousPage = function() {
			$scope.index = ($scope.index - 10)>=0?$scope.index - 10:0;
			$scope.searchActivities($scope.search, $scope.index);
		};
		
		$scope.nextPage = function() {			
			$scope.index = ($scope.index + 10)>=$scope.data.num?parseInt($scope.data.num/10)*10:$scope.index + 10;
			$scope.searchActivities($scope.search, $scope.index);
		};
		
		$scope.getPage = function(index) {
			$scope.index = index<0?0:index;
			$scope.searchActivities($scope.search, $scope.index);
		};
		
		$scope.linkRow = function(val) {
			document.location.href = "/demo/registration/" + val;
		};
		
		$scope.initPage();
		$scope.index = 0;
		$scope.search = "";
	}
]);
</script>
</body>
</html>