<%@include file="include/global.jspf" %>
<c:set var="ngApp" value="app"/>
<c:set var="ngController" value="ctrl"/>
<%@include file="include/header.jspf" %>
<table border=1 width=100%>
<tr ng-repeat="User in data.users">
<td>{{User.userId}}</td>
<td>{{User.userName}}</td>
<td>{{User.phone}}</td>
<td>{{User.email}}</td>
<td>{{User.remarks}}</td>
</tr>
</table>
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