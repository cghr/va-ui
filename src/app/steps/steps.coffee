do(app = angular.module('steps', []))->
  app.config ($stateProvider)->
    $stateProvider.state('steps',
      url: '/steps'
      templateUrl: 'steps/steps.jade'
    )

    for x in [1..5]
      $stateProvider.state("steps.step#{x}",
        url: "/step#{x}",
        templateUrl: "steps/step#{x}.jade"
      )



