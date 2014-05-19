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
		  						<span style="padding-top:15px;float:left">{{'12313' | number}} Rows</span>
		  					</div>
	  					</div>  					
  					</div>				 					
					<table>
						<thead>
							<tr>
								<td width="5%">#</td>
								<td width="16%">userId</td>
								<td width="16%">userName</td>
								<td width="16%">phone</td>
								<td width="16%">email</td>
								<td width="16%">remarks</td>
								<td width="15%">operation</td>								
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="User in data.users">
								<td class="text-center">{{$index + 1}}</td>							
								<td class="text-left">{{User.userId}}</td>
								<td class="text-left">{{User.userName}}</td>
								<td class="text-left">{{User.phone}}</td>
								<td class="text-left">{{User.email}}</td>
								<td class="text-left">{{User.remarks}}</td>
								<td class="text-center"></td>
							</tr>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
	</div>
<script>
function User() {
	var obj = {userId:"test", userName:"test", phone:"test", email:"test", remarks:"test"};
	return obj;
}

angular.module('app', ['ngResource'])
.controller('ctrl', ['$scope', '$resource', 
	function($scope, $resource) {
	
		$scope.initPage = function() {
			var search_users = $resource('/demo/api/search_users.json');
			search_users.save(new User(),function(data){
				$scope.data = data;
			});
		};
		
		$scope.initPage();		
	}
]);
</script>
</body>
</html>