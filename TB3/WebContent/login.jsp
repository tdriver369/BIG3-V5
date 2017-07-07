<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		<link href="./css/login2.css" type="text/css" rel="stylesheet">
		<!-- <script src="http://code.jquery.com/jquery-1.10.2.js"
			type="text/javascript"></script> -->
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
		
		
	</head>
<body ng-app="myApp" id="login">
	<div ng-controller="homepage">
		<table id="header">
			<tr>
				<td colspan="2">
					<img src="Drive.jpg" style="width: 300px; height: 300px">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<span id="bigboi">TH<span class="dick">3</span> BIG THR<span class="dick">33</span></span>
				</td>
			</tr>
			<tr >
				<td><input type="button" class="buttons" ng-class="{'btn-change': logButton}" ng-click="changeLog()" value="Login"></td>
				<td><input type="button" class="buttons" ng-class="{'btn-change': signButton}" ng-click="changeSign()" value="Sign Up"></td>
			</tr>
				<td class="dick"> Username: </td>
				<td><input ng-model="username" id="username" type="text"></td>
			</tr>
			<tr>
				<td class="dick"> Password: </td>
				<td><input ng-model="password" id="password" type="text"></td>
			</tr>
			<tr ng-show="confirm">
				<td class="dick"> Confirm Password: </td>
				<td><input id="password2" type="text"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button id="submit" ng-click="hi()">GO</button>
				</td>
			</tr>
		</table>
		<div>{{hi2}}</div>
		<div>{{hi3}}</div>
		<div id="hi4">{{hi4}}</div>
	</div>
<script></script>
<script src="./js/login3.js"></script>
</body>
</html>
