class LoginPage < SitePrism::Page

	set_url "https://demo.suiteondemand.com/"
	element :CRMSuiteLogo, '.p_login_top'  
  	element :loginfield, '#user_name'
  	element :passwordfield, '#user_password'
  	element :loginbutton, '#bigbutton'
  	element :welcomeCRM, '#next_tab_personalinfo'
  	element :confirmInformation, '#next_tab_locale'
  	element :confirmLocate,'#next_tab_finish'
  	element :finishConfirm,:xpath,"//*[@id='finish']/div/input[2]"
 
 	def login(username,password)
 		loginfield.set(username)
 		passwordfield.set(password)
 		loginbutton.click
 		#welcomeCRM.click
 		#confirmInformation.click
 		#confirmLocate.click
 		#finishConfirm.click
 	end
end
