#language: en
#utf-8

@httparty
Feature: Verify Data Using Httparty
	As a general User
	I able to send json
	So I able to see the response

	Scenario: Search a information
	     Given I have a document to Search
	     When I send this document
	     Then I receive the result
	@post     
	Scenario: Post a information
		  When I post a information
		  Then I validate this retorne code     		
    @delete
    Scenario: Delete information
    	  When I delete a information
    	  Then I validae this retorne code
    @allcomment
    Scenario: read all comments
    	  When I search all comments    	  
    	  Then I validate this specfic code
    @onecomment
    Scenario: Search One comments
    	   When I search one "ID"
    	   Then I validate return code
    	   		  