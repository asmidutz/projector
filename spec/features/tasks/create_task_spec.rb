require 'rails_helper'

RSpec.feature 'Creating a task' do 
  before do
    @user = FactoryGirl.create(:user)
    sign_in(@user)
  end
  
  scenario 'succeeds with valid values' do 
    project = FactoryGirl.create(:project)
    
    visit project_path(project)
    
    click_link 'Add Task'
    
    expect(current_path).to eq(new_project_task_path(project))
    expect(page).to have_content(project.name)
    
    fill_in 'task_name', with: 'Test Task One'
    fill_in 'task_due_date', with: '2016-03-30'
    click_button 'Create Task'
    
    expect(current_path).to eq(project_tasks_path(project))
    expect(page).to have_content('Test Task One')
    expect(page).to have_content('2016-03-30')
  end
  
  scenario 'fails if name is not provided' do 
    project = FactoryGirl.create(:project)
    
    visit project_path(project)
    
    click_link 'Add Task'
    
    expect(current_path).to eq(new_project_task_path(project))
    expect(page).to have_content(project.name)
    
    fill_in 'task_name', with: ''
    click_button 'Create Task'
    
    expect(current_path).to eq(project_tasks_path(project))
    expect(page).to have_content('error')
  end
  
  scenario 'fails if name is not provided' do 
    project = FactoryGirl.create(:project)
    
    visit project_path(project)
    
    click_link 'Add Task'
    
    expect(current_path).to eq(new_project_task_path(project))
    expect(page).to have_content(project.name)
    
    fill_in 'task_name', with: 'Test Task'
    fill_in 'task_due_date', with: ''
    click_button 'Create Task'
    
    expect(current_path).to eq(project_tasks_path(project))
    expect(page).to have_content('error')
  end
end