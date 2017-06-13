#language: en
#utf-8

Feature: Create Task

I would like to create a task
Then i can see that task created in my list

Background:
    Given I navigate to the CRM Page
	And I enter with username as will and password as will

	Scenario Outline: Create Task
		When I navigate to Create Task
		And Create a task using <name>
		Then I will see in my Tasks <list>

	Examples:
	| name          |  list          |
    | Luiz Fernando |  Luiz Fernando |
    | Thiago        |  Thiago        |
    | Fabiana       |  Fabiana       |

    Scenario: Edit Task
          When I navigate to Create Task
          And navigate to my Task list
          Then I able to change my task
          And update it
 @moreUsers         
    Scenario: Delete Task      
    	  When I navigate to Create Task
          And navigate to my Task list
          Then I able to change my task
          And delete it	
