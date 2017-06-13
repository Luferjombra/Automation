#language: en
#utf-8
@TESTE
Feature: Register a New Employee

I would like to resgiter an Employee
Then give access to them

Scenario: Register a New Employee
	Given I navigate to the User Management page
	And I enter with username as admin and password as admin
	And Access the management page
	And Click on Users
	When I fill the form with the new user  
	Then Register sucessfully
