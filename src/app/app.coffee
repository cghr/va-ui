do (app=angular.module "myApp", [
  'myApp.home',
  'steps'
  'templates-app',
  'templates-common',
  'ui.router.state',
  'ui.router',
  'lodash'
]) ->

  app.config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise '/step1'

  app.run ->





