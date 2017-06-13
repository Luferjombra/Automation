class Home < SitePrism::Page

	element :homeMenu, '#moduleTab_Home'  
  	element :crmDashboard,:xpath,"//*[@id='tab0']"
  	element :actionMenu,:xpath,"//*[@id='tab-actions']/a"
  	element :createMenu,:xpath,"//*[@id='quickcreatetop']/a"
  	element :createMenuList,:xpath,"//*[@id='quickcreatetop']/ul/li[7]/a"
  	element :searchbutton ,'#searchbutton'
  	element :alertbutton, :xpath,"//*[@id='desktop_notifications']/button"
  	
end
