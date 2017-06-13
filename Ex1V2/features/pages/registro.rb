class RegisterPage < SitePrism::Page

	element :menuPim, '#menu_pim_viewPimModule'  
  	element :menuAddEmployee, '#menu_pim_addEmployee' 
  	element :addbutton, '#btnAdd'
  	element :FirstNameField, '#firstName'
  	element :LastNameField, '#lastName'
    element :AddSaveButton, '#btnSave'


 
 def  accessRegisterMenu
  	menuPim.click
  	menuAddEmployee.click
 end
end
