#language: en
#utf-8
@TESTE2
Feature: Edit Employee

I would like to edit a old Employee
Then they have to update as well

Background:
    Given I navigate to the User Management page
	And I enter with username as admin and password as admin
	And Access the management page
	And Click on Users

Scenario: Edit Employee
	When I select And access employee
	Then I update that employee
	And save it
