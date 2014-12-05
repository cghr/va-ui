do(app = angular.module('myApp')) ->
  app.controller 'AppController', ($scope, $http, _) ->
    $scope.steps = [
      {label: 'Summary'}
      {label: 'Positive Symptoms'}
      {label: 'Probing Symptoms'}
      {label: 'Medical Inf'}
      {label: 'Narrative'}
    ]

    $scope.participant = {respondentCOD: '', medicalInformation: ''}
    $scope.symptomList = []
    $http
    .get('assets/symptoms/symptomList.json')
    .success (data)->
      $scope.symptomList = data
      $scope.symptomList.forEach (e)-> e.active = false

    .error ()-> $log.error('Error loading symptom list')

    $scope.filterSymptoms = ()->
      $scope.positiveSymptoms = _.filter($scope.symptomList, (e)-> e.active)
      $scope.negativeSymptoms = _.filter($scope.symptomList, (e) -> !e.active)
