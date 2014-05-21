<%@include file="include/global.jspf" %>
<c:set var="ngApp" value="app"/>
<c:set var="ngController" value="ctrl"/>
<%@include file="include/header.jspf" %>
	<div class="container">
		<p></p>
		<div class="bs-example">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">demo</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-6">
	    					<div class="input-group">
	      						<input type="text" placeholder="userName / phone" class="form-control">
	      						<span class="input-group-btn">
	        						<button class="btn btn-default" type="button">Search</button>
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
							<tr>
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
							<tr ng-repeat="Activities in data.activities">
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
					
				</div>
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
			activityDAO.getActivities().save({searchTerm:'', index:0}, function(data) {
				$scope.data = data;
			});
		};
		
		$scope.initPage();		
	}
]);
</script>
</body>
</html>