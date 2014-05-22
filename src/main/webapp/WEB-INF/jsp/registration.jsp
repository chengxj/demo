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
	          <p>#####################################################################################################################################</p>
	          <p>#####################################################################################################################################</p>
	          <p>#####################################################################################################################################</p>
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
						<td class="text-left"><button class="btn btn-primary" type="button" data-toggle="modal" data-target="#edit_Modal" ng-click="setEditIndex($index)">edit</button>&nbsp;<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#delete_Modal" ng-click="setDeleteIndex($index)">remove</button></td>
					</tr>
				</tbody>
			</table>
      </div>
      
      <div class="modal fade" id="add_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        			<h4 class="modal-title">add Registration</h4>
      			</div>
      			<div class="modal-body">
            		<p>One fine body&hellip;</p>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			<button type="button" class="btn btn-primary">Save</button>
      			</div>
    		</div>
  		</div>
	</div>
	
	<div class="modal fade" id="delete_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        			<h4 class="modal-title">remove Registration</h4>
      			</div>
      			<div class="modal-body">
            		<p>One fine body&hellip;</p>
            		
            		
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			<button type="button" class="btn btn-primary" ng-click="removeRegistration()">Ok</button>
      			</div>
    		</div>
  		</div>
	</div>
	
	<div class="modal fade" id="edit_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        			<h4 class="modal-title">edit Registration</h4>
      			</div>
      			<div class="modal-body">
            		<p>One fine body&hellip;</p>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			<button type="button" class="btn btn-primary">Save changes</button>
      			</div>
    		</div>
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
	
		$scope.delete_index = 0;
		$scope.edit_index = 0;
		
		$scope.setDeleteIndex = function(index) {
			$scope.delete_index = index;
		};
		
		$scope.setEditIndex = function(index) {
			$scope.edit_index = index;
		};
		
		$scope.deleteRegistration = function(){ 				
			$scope.data.activities.splice($scope.delete_index, 1);
			$("#delete_Modal").modal('hide');
		};
		
		$scope.editRegistration = function(){ 				
			$("#edit_Modal").modal('hide');
		};
		
		$scope.removeRegistration = function() { 				
			
			$("#add_Modal").modal('hide');
		};
	
		$scope.initPage = function() {
			$scope.searchActivities("");
		};
		
		$scope.searchActivities = function(searchTerm) {
			activityDAO.getActivities().save({searchTerm:searchTerm, index:0}, function(data) {
				$scope.data = data;
			});
		};
		
		$scope.initPage();		
	}
]);
</script>
</body>
</html>