#language: en
#utf-8
@CreateTask
Feature: Create Task

I would like to create a task
Then i can see that task created in my list

Background:
    Given I navigate to the CRM Page
	And I enter with username as will and password as will

Scenario: Create Task
	When I navigate to Create Menu
	And Create a task
	Then I will see in my Tasks list
