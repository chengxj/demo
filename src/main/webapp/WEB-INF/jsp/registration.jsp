<%@include file="include/global.jspf" %>
<c:set var="ngApp" value="app"/>
<c:set var="ngController" value="ctrl"/>
<%@include file="include/header.jspf" %>
	<div class="container">
		<p></p>
		<div class="bs-example">
      <div class="panel panel-primary">
        <div class="panel-heading">demo</div>
        <div class="panel-body">
          <p>####################################################################################################################################</p>
          <p>####################################################################################################################################</p>
          <p>####################################################################################################################################</p>
        </div>   
        <table class="table">
			<thead>
				<tr class="clickableRow">
					<td width="9%">#</td>
					<td width="13%">title</td>
					<td width="5%">type</td>
					<td width="5%">leader</td>
					<td width="13%">scenic_spots</td>
					<td width="20%">departure</td>
					<td width="20%">destination</td>
					<td width="15%">operation</td>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="Activities in data.activities" onmouseover="style.backgroundColor='#fae5e5'" onmouseout="style.backgroundColor='' ">
					<td class="text-left">{{$index + 1}}</td>							
					<td class="text-left">{{Activities.title}}</td>
					<td class="text-left">{{Activities.type_enum}}</td>
					<td class="text-left">{{Activities.leader}}</td>
					<td class="text-left">{{Activities.scenic_spots}}</td>
					<td class="text-left">{{Activities.departure}}</td>
					<td class="text-left">{{Activities.destination}}</td>
					<td class="text-left"></td>
				</tr>
			</tbody>
		</table>     

      </div>
    </div>
	</div>
<script>
var rootPath = '${pageContext.request.contextPath}';

angular.module('app', ['ngResource'])
.factory('activityDAO', function($resource) {
	return {
				getActivities:function() {
					return $resource(rootPath + '/api/search_activities.json');
				}
		   };	
})
.controller('ctrl', ['$scope', 'activityDAO', 
	function($scope, activityDAO) {
	
		$scope.initPage = function() {
			$scope.searchActivities("");
		};
		
		$scope.searchActivities = function(searchTerm) {
			activityDAO.getActivities().save({searchTerm:searchTerm, index:0}, function(data) {
				$scope.data = data;
			});
		};
		
		$scope.linkRow = function(val) {
			document.location.href = "/activities_users/" + val;
		};
		
		$scope.initPage();		
	}
]);
</script>
</body>
</html>