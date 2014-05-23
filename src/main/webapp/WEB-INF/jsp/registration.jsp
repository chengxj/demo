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
		    	<div class="row" style="margin-bottom:10px;">
 					<div class="col-md-6">
 						<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">title</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.title" readonly/>
   						</div>
   					</div>
  					<div class="col-md-6" align="right">
  					 	<div class="input-group">
     						<span class="input-group-btn" width=20%>
       							<button class="btn btn-default" type="button">type_enum</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.type_enum" readonly/>
   						</div>
  					</div>
			  	</div>
			  	<div class="row" style="margin-bottom:10px;">
 					<div class="col-md-6">
 						<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">scenic_spots</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.scenic_spots" readonly/>
   						</div>
   					</div>
  					<div class="col-md-6" align="right">
  					 	<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">leader</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.leader" readonly/>
   						</div>
  					</div>
			  	</div>
			  	<div class="row" style="margin-bottom:10px;">
 					<div class="col-md-6">
 						<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">departure</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.departure" readonly/>
   						</div>
   					</div>
  					<div class="col-md-6" align="right">
  					 	<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">destination</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.destination" readonly/>
   						</div>
  					</div>
			  	</div>
	          	<p><button type="button" data-toggle="modal" data-target="#add_Modal" ng-click="setAddEvent()" class="btn btn-danger pull-right">Add</button></p>
	        </div>   
	        <table class="table">
				<thead>
					<tr class="clickableRow">
						<td width="9%">序号</td>
						<td width="13%">name</td>
						<td width="5%">sex</td>
						<td width="5%">rname</td>
						<td width="13%">cway</td>
						<td width="10%">econtact</td>
						<td width="10%">ecway</td>
						<td width="10%">num</td>
						<td width="10%">remarks</td>						
						<td width="15%">operation</td>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="Registration in data.registrations" onmouseover="style.backgroundColor='#fae5e5'" onmouseout="style.backgroundColor='' ">
						<td class="text-left">{{$index + 1}}</td>							
						<td class="text-left">{{Registration.name}}</td>
 						<td class="text-left">{{Registration.sex}}</td>
						<td class="text-left">{{Registration.real_name}}</td>
						<td class="text-left">{{Registration.contact_way}}</td>
						<td class="text-left">{{Registration.emergency_contact}}</td>
						<td class="text-left">{{Registration.emergency_contact_way}}</td>
						<td class="text-left">{{Registration.num}}</td>
						<td class="text-left">{{Registration.equipment_experience_remarks}}</td>						
						<td class="text-left"><button class="btn btn-primary" type="button" data-toggle="modal" data-target="#edit_Modal" ng-click="setEditIndex($index)">edit</button>&nbsp;<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#delete_Modal" ng-click="setDeleteIndex($index)">remove</button></td>
					</tr>
				</tbody>
			</table>
      </div>
      
      <div class="modal fade" id="add_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      	<form name="add_form">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        			<h4 class="modal-title">add Registration</h4>
      			</div>
      			<div class="modal-body">
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">name</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.name" class="form-control" required/></div>
							</div>
						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">sex</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.sex" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">rname</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.real_name" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">cway</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">econtact</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.emergency_contact" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">ecway</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.emergency_contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
					<div class="row">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">num</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.num" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">remarks</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.equipment_experience_remarks" class="form-control" required/></div>
							</div>
  						</div>
					</div>   		
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			<button type="button" class="btn btn-primary" ng-disabled='add_form.$invalid' ng-click="addRegistration()">Save</button>
      			</div>
    		</div>
  		</div>
  		</form>
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
        			<button type="button" class="btn btn-primary" ng-click="deleteRegistration()">Ok</button>
      			</div>
    		</div>
  		</div>
	</div>
	
	<div class="modal fade" id="edit_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<form name="edit_form">
  		<div class="modal-dialog">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        			<h4 class="modal-title">edit Registration</h4>
      			</div>
      			<div class="modal-body">
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">name</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.name" class="form-control" required/></div>
							</div>
						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">sex</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.sex" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">rname</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.real_name" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">cway</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">econtact</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.emergency_contact" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">ecway</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.emergency_contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
					<div class="row">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">num</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.num" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">remarks</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.equipment_experience_remarks" class="form-control" required/></div>
							</div>
  						</div>
					</div>   		
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			<button type="button" class="btn btn-primary" ng-disabled="edit_form.$invalid" ng-click="editRegistration()">Save changes</button>
      			</div>
    		</div>
  		</div>
  		</form>
	</div>
                  
    </div>
	</div>
<script>
var rootPath = '${pageContext.request.contextPath}';
var activities_id = '${activities_id}';

function Registration() {
	var obj = {id:null, activities_id:activities_id, name:"",sex:'MAN', real_name:"",
			   contact_way:"", emergency_contact:"", emergency_contact_way:"", num :0, equipment_experience_remarks:""};
	return obj;
}

angular.module('app', ['ngResource'])
.factory('registrationDAO', function($resource) {
	return {
				getRegistrationDetail:function() {
					return $resource(rootPath + '/api/get_registration_detail.json');
				},
				addRegistration:function() {
					return $resource(rootPath + '/api/add_registration.json');
				},
				editRegistration:function() {
					return $resource(rootPath + '/api/edit_registration.json');
				},
				deleteRegistration:function() {
					return $resource(rootPath + '/api/delete_registration.json');
				}
	};	
})
.controller('ctrl', ['$scope', 'registrationDAO', 
	function($scope, registrationDAO) {
	
		$scope.delete_index = 0;
		$scope.edit_index = 0;
		
		$scope.setDeleteIndex = function(index) {
			$scope.delete_index = index;
		};
		
		$scope.setEditIndex = function(index) {
			$scope.edit_index = index;
			$scope.edit_registration = angular.copy($scope.data.registrations[$scope.edit_index]);
		};
		
		$scope.setAddEvent = function() {
			$scope.add_registration = new Registration();
		};
		
		$scope.deleteRegistration = function() {
			var registration = $scope.data.registrations[$scope.delete_index];
			registrationDAO.deleteRegistration().save(registration, function(data){
				$scope.data.registrations.splice($scope.delete_index, 1);
			});
			$("#delete_Modal").modal('hide');
		};
		
		$scope.addRegistration = function() {
			registrationDAO.addRegistration().save($scope.add_registration, function(data){
				$scope.data.registrations.push(data);
			});
			$("#add_Modal").modal('hide');
		};
		
		$scope.editRegistration = function() {
			registrationDAO.editRegistration().save($scope.edit_registration, function(data){
				$scope.data.registrations[$scope.edit_index] = data;
			});
			$("#edit_Modal").modal('hide');
		};
		
		$scope.getRegistrationDetail = function() {
			registrationDAO.getRegistrationDetail().save({activities_id:activities_id}, function(data) {
				$scope.data = data;
			});
		};
		
		$scope.getRegistrationDetail();		
	}
]);
</script>
</body>
</html>