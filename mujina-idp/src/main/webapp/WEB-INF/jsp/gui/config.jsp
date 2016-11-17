<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css" />

    <script src="${pageContext.request.contextPath}/js/angular.min.js"></script>

    <%@ include file="angular-app-init.jsp" %>

    <script src="${pageContext.request.contextPath}/js/controller/attributes.controller.js"></script>
</head>
<body ng-app="angular-app" class="container-fluid">
    <h2>Identity Provider Configuration</h2>

    <div class="row">
        <div class="col-md-8 col-sm-12">
            <h3>Attributes</h3>
            <div class="attributes-section list-group" ng-controller="attributesController" ng-init='init("<%= request.getAttribute("attributes") %>")'>
                <ul>
                    <li ng-repeat="(key, value) in attributes" class="list-group-item">
                        <span class="attr-label">{{key}}</span>
                        <span class="attr-value">{{value[0]}}</span>
                        <button class="btn btn-danger remove-btn" ng-click="remove(key)" title="Remove">
                            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
                        </button>
                    </li>
                </ul>
                <ul ng-if="newAttr">
                    <li class="list-group-item">
                        <span class="attr-label">
                            <label>Attribute:
                                <input ng-model="newAttr.name" />
                            </label>
                            <label>Value:
                                <input ng-model="newAttr.value" />
                            </label>
                        </span>
                        <span class="attr-value">
                            <button class="btn btn-danger" ng-disabled="!newAttr.name" ng-click="save()">Save</button>
                        </span>
                    </li>
                </ul>
                <button class="btn btn-primary" ng-click="add()" ng-show="!newAttr" title="Add"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
            </div>
        </div>
    </div>
</body>
</html>
