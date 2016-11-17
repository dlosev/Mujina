<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<script>
    'use strict';

    var AngularApp = angular.module('angular-app',
            []).constant('constants', {
        apiUrl: '${pageContext.request.contextPath}/api/'
    })
            .config([function () {

            }])
            .run([function () {

            }]);
</script>
