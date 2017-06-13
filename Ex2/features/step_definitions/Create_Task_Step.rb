@before

Given(/^I navigate to the CRM Page$/) do
  #@loginpage = LoginPage.new
  #@loginpage.load
  sleep 3
end

Given(/^I enter with username as will and password as will$/) do 
  @loginpage.login('will','will')
  sleep 3
end
When(/^I navigate to Create Menu$/) do
  @home = Home.new
sleep 3
expect(@home).to have_crmDashboard
expect(@home).to have_actionMenu
@home.createMenu.click
@home.createMenuList.click
sleep 3
screenshot_and_save_page
end

When(/^Create a task$/) do
  @register = Register.new
  sleep 3
  find('#name')
  Register.new.subjectField.set "Luiz"
  sleep 3
  find(:xpath,'//option[@value = "Completed"]').click
  screenshot_and_save_page
  find(:xpath,'//option[@value = "Medium"]').click
  sleep 3
  screenshot_and_save_page
  @register.saveButton[1].click
  sleep 4
  
end

Then(/^I will see in my Tasks list$/) do
  #expect(@Register).to have_subjectField
  #expect(@Register).to have_statusField
  #expect(@Register).to have_priorityField
  sleep 4
  screenshot_and_save_page
  assert_text('LUIZ')
end
