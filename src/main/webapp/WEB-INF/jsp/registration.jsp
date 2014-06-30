<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
       							<button class="btn btn-default" type="button">标&nbsp;&nbsp;&nbsp;题</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.title" readonly/>
   						</div>
   					</div>
  					<div class="col-md-6" align="right">
  					 	<div class="input-group">
     						<span class="input-group-btn" width=20%>
       							<button class="btn btn-default" type="button">类&nbsp;&nbsp;&nbsp;型</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.type_enum" readonly/>
   						</div>
  					</div>
			  	</div>
			  	<div class="row" style="margin-bottom:10px;">
 					<div class="col-md-6">
 						<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">景&nbsp;&nbsp;&nbsp;点</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.scenic_spots" readonly/>
   						</div>
   					</div>
  					<div class="col-md-6" align="right">
  					 	<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">领&nbsp;&nbsp;&nbsp;队</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.leader" readonly/>
   						</div>
  					</div>
			  	</div>
			  	<div class="row" style="margin-bottom:10px;">
 					<div class="col-md-6">
 						<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">出发地</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.departure" readonly/>
   						</div>
   					</div>
  					<div class="col-md-6" align="right">
  					 	<div class="input-group">
     						<span class="input-group-btn">
       							<button class="btn btn-default" type="button">目的发</button>
     						</span>
     						<input type="text" class="form-control" ng-model="data.activities.destination" readonly/>
   						</div>
  					</div>
			  	</div>
	          	<p><button type="button" data-toggle="modal" data-target="#add_Modal" ng-click="setAddEvent()" class="btn btn-danger pull-right">增加</button></p>
	        </div>   
	        <table class="table">
				<thead>
					<tr class="clickableRow">
						<td width="9%">序号</td>
						<td width="10%">姓名</td>
						<td width="5%">性别</td>
						<td width="8%">真实姓名</td>
						<td width="10%">联系方式</td>
						<td width="12%">紧急联系人</td>
						<td width="13%">紧急联系方式</td>
						<td width="8%">人数</td>
						<td width="10%">备注</td>						
						<td width="15%">操作</td>
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
						<td class="text-left">{{Registration.num | number}}</td>
						<td class="text-left">{{Registration.equipment_experience_remarks}}</td>						
						<td class="text-left"><button class="btn btn-primary" type="button" data-toggle="modal" data-target="#edit_Modal" ng-click="setEditIndex($index)">编辑</button>&nbsp;<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#delete_Modal" ng-click="setDeleteIndex($index)">删除</button></td>
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
        			<h4 class="modal-title">增加报名</h4>
      			</div>
      			<div class="modal-body">
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">姓名</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.name" class="form-control" required/></div>
							</div>
						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">性别</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.sex" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">真实姓名</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.real_name" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">联系方式</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">紧急联系人</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.emergency_contact" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">紧急联系方式</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.emergency_contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
					<div class="row">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">人数</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.num" class="form-control" integer required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">备注</div>
  								<div class="col-md-8"><input type="text" ng-model="add_registration.equipment_experience_remarks" class="form-control" required/></div>
							</div>
  						</div>
					</div>   		
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        			<button type="button" class="btn btn-primary" ng-disabled='add_form.$invalid' ng-click="addRegistration()">保存</button>
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
        			<h4 class="modal-title">删除报名</h4>
      			</div>
      			<div class="modal-body">
            		<p>你确认要删除当前记录吗？</p>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        			<button type="button" class="btn btn-primary" ng-click="deleteRegistration()">删除</button>
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
        			<h4 class="modal-title">编辑报名</h4>
      			</div>
      			<div class="modal-body">
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">姓名</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.name" class="form-control" required/></div>
							</div>
						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">性别</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.sex" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">真实姓名</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.real_name" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">联系方式</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
            		<div class="row" style="margin-bottom:20px;">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">紧急联系人</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.emergency_contact" class="form-control" required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">紧急联系方式</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.emergency_contact_way" class="form-control" required/></div>
							</div>
  						</div>
					</div>     
					<div class="row">
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">人数</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.num" class="form-control" integer required/></div>
							</div>
  						</div>
  						<div class="col-md-6">
  							<div class="row">
  								<div class="col-md-4" align="right">备注</div>
  								<div class="col-md-8"><input type="text" ng-model="edit_registration.equipment_experience_remarks" class="form-control" required/></div>
							</div>
  						</div>
					</div>   		
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        			<button type="button" class="btn btn-primary" ng-disabled="edit_form.$invalid" ng-click="editRegistration()">更新</button>
      			</div>
    		</div>
  		</div>
  		</form>
	</div>
                  
    </div>
	</div>
<script>
var activities_id = '${activities_id}';

function Registration() {
	var obj = {id:null, activities_id:activities_id, name:"",sex:'MAN', real_name:"",
			   contact_way:"", emergency_contact:"", emergency_contact_way:"", num :null, equipment_experience_remarks:""};
	return obj;
}

var myApp = angular.module('app', ['ngResource']);

myApp.factory('registrationDAO', function($resource) {
	return {
				getRegistrationDetail:function() {
					return $resource('/api/get_registration_detail.json');
				},
				addRegistration:function() {
					return $resource('/api/add_registration.json');
				},
				editRegistration:function() {
					return $resource('/api/edit_registration.json');
				},
				deleteRegistration:function() {
					return $resource('/api/delete_registration.json');
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

var INTEGER_REGEXP = /^[1-9][0-9]*$/;
myApp.directive('integer', function() {
  return {
    require: 'ngModel',
    link: function(scope, elm, attrs, ctrl) {
      ctrl.$parsers.unshift(function(viewValue) {
        if (INTEGER_REGEXP.test(viewValue)) {
          ctrl.$setValidity('integer', true);
          return viewValue;
        } else {
          ctrl.$setValidity('integer', false);
          return undefined;
        }
      });
    }
  };
});

</script>
</body>
</html>