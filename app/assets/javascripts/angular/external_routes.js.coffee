#= require_self
#= require_tree ./services/external
#= require_tree ./directives/external
#= require_tree ./controllers/external

'use strict'
debugger
angular.module('Academia', ["ngResource", "ngRoute", "route-segment", 'view-segment', 'ngSanitize'])
  .config(['$routeSegmentProvider', '$locationProvider', '$routeProvider', ($routeSegmentProvider, $locationProvider, $routeProvider) ->

    $locationProvider.html5mode(true)

    $routeSegmentProvider
      .when("/dashboard",                 'main')

    $routeSegmentProvider.segment "main",
      templateUrl: asset_path "external/main/dashboard.html"
      controller: "MainDashboardCtrl"


  ])
  .config(["$httpProvider", (provider) ->
    provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
    provider.interceptors.push('authHttpResponseInterceptor')
  ])
  .config(['$compileProvider', ($compileProvider) ->
    # allow data links
    $compileProvider.aHrefSanitizationWhitelist(/^\s*(https?|ftp|mailto|data):/)
  ])
