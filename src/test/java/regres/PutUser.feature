Feature: This is put in the user
  Background:
    * def urlBase = 'https://reqres.in'
    * def usersPath = '/api/users'
    Scenario: Put user
      Given url urlBase + usersPath
      And request {name: 'morpheus updated', job: 'leader update'}
      When method PUT
      Then status 200
      And match $.name == 'morpheus updated'