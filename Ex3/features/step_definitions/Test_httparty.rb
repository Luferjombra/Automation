

Given(/^I have a document to Search$/) do
end

When(/^I send this document$/) do
  response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/101")
  puts response.body
end

Then(/^I receive the result$/) do
 expect(response.code).to eq 200
 puts "Validando recebimento do codigo de resposta 200"
end

response = nil
When(/^I post a information$/) do
  response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/",
  	:body => {'title' => 'Jombra',
  		       'body' => 'This is my first post using httparty',
  		       'userId' => '5'}.to_json,
    :headers => {'content-type' => 'application/json'})
end

Then(/^I validate this retorne code$/) do
    expect(response.code).to eq 201
  	puts "validando o recebimento post code = 201"
  	puts response.body
end

response = nil
When(/^I delete a information$/) do
  response = HTTParty.delete("https://jsonplaceholder.typicode.com/comments/1")
  puts response.code
end

Then(/^I validae this retorne code$/) do
  expect(response.code).to eq 200
  puts "Validando o recebimento delete code = 200"
  puts response.body
end

response = nil
When(/^I search all comments$/) do
  response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/")
  puts response.code
end

Then(/^I validate this specfic code$/) do
  expect(response.code).to eq 200
  puts "validando recebimento get code = 200"
  puts response.body
end

When(/^I search one "([^"]*)"$/) do |arg1|
  response = HTTParty.get("http://jsonplaceholder.typicode.com/comments/")
  #Get a item using vetor
  puts response[2]
  #Get name + email
  puts "Nome:" + response[2]['name'] + "\n Email:" + response[2]['email']
end

Then(/^I validate return code$/) do
  expect(response.code).to eq 200
  puts "Validando recebimento get code = 200"
  expect(response[2]['id']).to eq 3
end