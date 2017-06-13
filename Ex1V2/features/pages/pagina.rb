class LoginPage < SitePrism::Page

	set_url "http://opensource.demo.orangehrmlive.com/"
	element :loginid, '#txtUsername'  
  	element :passwordid, '#txtPassword'
  	element :botao_login, '#btnLogin'
 
 def login (username,password)
 	loginid.set(username)
 	passwordid.set(password)
 	botao_login.click
 end
end
