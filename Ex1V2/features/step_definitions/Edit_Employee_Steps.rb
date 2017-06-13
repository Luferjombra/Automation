When(/^I select And access employee$/) do
  check('ohrmList_chkSelectRecord_3')
  #binding.pry
  find(:xpath,'//*[@id="resultTable"]/tbody/tr[3]/td[2]/a').click
  #binding.pry

end

Then(/^I update that employee$/) do
  click_button('btnSave')
  #binding.pry
  select('Admin',:from => 'systemUser_userType')
  #binding.pry
  fill_in('systemUser_userName',:with => 'Jombra')
  select('Enabled',:from => 'systemUser_status')
end

Then(/^save it$/) do
  click_button('btnSave')
  assert_text('Successfully Updated')
end