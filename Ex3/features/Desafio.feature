#language: en
#utf-8


Feature: manipulate data using httparty
	As a beginner automation tester
	I able to create a method using post,get and put
	So I send it using ruby
@DesafioPost
Scenario: Create a book
	When I create a book to send using post
	Then I receive correct code to post
@DesafioGet			
Scenario: Read book created
	When I search the book using get
	Then I receive correct code to request	
@DesafioPut
Scenario: Update book created
	When I update the book
	Then I receive correct code request	