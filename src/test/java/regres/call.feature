Feature: Reutilizable test regres.in
  Scenario: Call post and delete with reusable features and delete with conditional operation
    * table users
    |name|job|
    |'max'|'tester1'|
    * def result = call read('pos2.feature') users
    * def id  = result[0].response.id
    * table ids
    |id|
    |id|
    * def res = result.responseStatus == 201 ? {} : karate.call('DeleteUser.feature',ids)