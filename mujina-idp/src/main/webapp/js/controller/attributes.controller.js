'use strict';

AngularApp.controller('attributesController', ['$scope', '$http', 'constants',
    function ($scope, $http, constants) {
        $scope.newAttr = null;

        $scope.init = function (attributes) {
            $scope.attributes = JSON.parse(attributes);
        };

        $scope.add = function () {
            $scope.newAttr = {};
        };

        $scope.remove = function (key) {
            $http.delete(constants.apiUrl + 'attributes/' + encodeURIComponent(key)).then(function (response) {
                delete $scope.attributes[key];
            }, function (response) {
                handleErrorResponse(response);
            });
        };

        $scope.save = function () {
            if ($scope.attributes[$scope.newAttr.name] === undefined) {
                $http.put(constants.apiUrl + 'attributes/' + encodeURIComponent($scope.newAttr.name), {value: [$scope.newAttr.value]}).then(function (response) {
                    $scope.attributes[$scope.newAttr.name] = [$scope.newAttr.value];

                    $scope.newAttr = null;
                }, function (response) {
                    handleErrorResponse(response);
                });
            }
        };

        function handleErrorResponse(response) {
            console.error(response.data || 'Request failed' + ': ' + response.status);
        }
    }]);
