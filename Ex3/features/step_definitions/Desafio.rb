response = nil

When(/^I create a book to send using post$/) do
  response = HTTParty.post("http://fakerestapi.azurewebsites.net/api/Books",
  	:body => {
  		      "ID" => 200,
  			  "Title" => "Livro Dom Casmurro",
	     	  "Description" => "teste@inmetrics.com.br",
	          "PageCount" => 256,
	          "Excerpt" => "Sumario resumido",
	          "PublishDate" => "2017-09-13T18:15:30.278Z"}.to_json,
	:headers => { 'Content-Type' => 'application/json'}
	)
	puts response.code

end

Then(/^I receive correct code to post$/) do
 expect(response.code).to eq 200
  	puts "validando o recebimento post code = 200"
  	puts response.code
end


When(/^I search the book using get$/) do
  response = nil
  response = HTTParty.get("http://fakerestapi.azurewebsites.net/api/Books/")
  
  puts response[199]['ID']
  puts response[199]['Title']
  puts response[199]['Description']
  
end
Then(/^I receive correct code to request$/) do
 expect(response[199]['ID']).to eq 200
 puts response.code
end


When(/^I update the book$/) do
  response = HTTParty.put("http://fakerestapi.azurewebsites.net/api/Books/200",
  	:body => {
	          "Excerpt" => "Edicao Especial do Dia das Maes"}.to_json,
	:headers => { 'Content-Type' => 'application/json'}
	)
	puts response.code
end

Then(/^I receive correct code request$/) do
  expect(response.code).to eq 200
  puts "validando o recebimento post code = 200"
  puts response.code
end