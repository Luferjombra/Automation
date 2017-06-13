@before
When(/^Create a task using Luiz Fernando$/) do
  sleep 3
  find('#name')
  Register.new.subjectField.set "Luiz Fernando"
  sleep 3
  screenshot_and_save_page
  find(:xpath,'//option[@value = "Completed"]').click
  find(:xpath,'//option[@value = "Medium"]').click
  sleep 3
  screenshot_and_save_page
  @register.saveButton[1].click
  sleep 4
end

When(/^Create a task using Thiago$/) do
  sleep 3
  find('#name')
  Register.new.subjectField.set "Thiago"
  sleep 3
  screenshot_and_save_page
  find(:xpath,'//option[@value = "Completed"]').click
  find(:xpath,'//option[@value = "Medium"]').click
  sleep 3
  screenshot_and_save_page
  @register.saveButton[1].click
  sleep 4
end

When(/^Create a task using Fabiana$/) do
  sleep 3
  find('#name')
  Register.new.subjectField.set "Fabiana"
  sleep 3
  screenshot_and_save_page
  find(:xpath,'//option[@value = "Completed"]').click
  find(:xpath,'//option[@value = "Medium"]').click
  sleep 3
  screenshot_and_save_page
  @register.saveButton[1].click
  sleep 4
end
Then(/^I will see in my Tasks Luiz Fernando$/) do
  sleep 4   
  assert_text('LUIZ FERNANDO')
  sleep 4
  screenshot_and_save_page
end

Then(/^I will see in my Tasks Thiago$/) do
  sleep 4 	
  assert_text('Thiago')
  sleep 4
  screenshot_and_save_page
end

Then(/^I will see in my Tasks Fabiana$/) do
  sleep 4  	
  assert_text('FABIANA')
  sleep 4
  screenshot_and_save_page
end

When(/^navigate to my Task list$/) do
  sleep 4	
  click_link('moduleTab_Tasks')
  #find(:xpath,"//*[@id='modulelinks']/ul/ul/li[2]/a").click Rspec doesnt math
  sleep 4
  screenshot_and_save_page
  
end

Then(/^I able to change my task$/) do
  find(:xpath,"//*[@id='MassUpdate']/div[3]/table/tbody/tr[5]/td[4]/b/a").click
  screenshot_and_save_page
  sleep 4
end

Then(/^update it$/) do
  find(:xpath,"//*[@id='tab-actions']/a").click
  click_button('edit_button')
  Register.new.subjectField.set "Fabiana"
  sleep 4
  screenshot_and_save_page
  find(:xpath,'//option[@value = "Completed"]').click
  find(:xpath,'//option[@value = "Medium"]').click
  sleep 4
  screenshot_and_save_page
  @register.saveButton[1].click
  sleep 4
  screenshot_and_save_page
  assert_text('FABIANA')
  sleep 4

end

Then(/^delete it$/) do
  find(:xpath,"//*[@id='tab-actions']/a").click
  sleep 4
  screenshot_and_save_page
  click_button('delete_button')
  sleep 4
  screenshot_and_save_page
  page.driver.browser.switch_to.alert.accept
  sleep 4
end