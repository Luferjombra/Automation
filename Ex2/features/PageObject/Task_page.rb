class Register < SitePrism::Page

	elements :saveButton, '#SAVE'
	element :cancelButton,'#CANCEL'
	element :closeCreateNew,:xpath, "//*[@id='EditView']/table/tbody/tr/td[1]/div/input[3]"  
	element :createTaskSideMenu,:xpath, "//*[@id='actionMenuSidebar']/ul/li[1]/a/div[2]"
	element :taskForm,:xpath, "//*[@id='EditView_tabs']/div[3]/div[2]/div[1]/a/div"
	element :subjectField, '#name'
	elements :statusField,:xpath,"//select[@id = 'status']"
	element :priorityField, '#priority'
	element :taskMenu, '#moduleTab_Tasks'
	element :viewTask, '//*[@id="modulelinks"]/ul/ul/li[2]/a'
	
end
