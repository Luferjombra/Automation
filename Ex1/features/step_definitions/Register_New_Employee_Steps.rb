Given(/^I navigate to the User Management page$/) do
  visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
end

Given(/^I enter with username as admin and password as admin$/) do
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button('btnLogin')
end

Given(/^Access the management page$/) do
  click_on ('menu_admin_viewAdminModule')  
  click_on ('menu_admin_UserManagement')
  end

Given(/^Click on Users$/) do
  click_on('menu_admin_viewSystemUsers')  
end

When(/^I fill the form with the new user$/) do
  click_on ('btnAdd')
  select('Admin', :from => 'systemUser_userType') 
  fill_in 'systemUser_employeeName_empName', :with => "Thomas Fleming"
  fill_in 'systemUser_userName', :with => "Jombra"
  select('Enabled', :from => 'systemUser_status')
  fill_in 'systemUser_password', :with => "Technno804512"
  fill_in 'systemUser_confirmPassword', :with => "Technno804512"
  assert_text('Strong')
  click_on('btnSave')

end

Then(/^Register sucessfully$/) do
assert_text('Successfully Saved')  
end