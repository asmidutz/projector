require 'rails_helper'

RSpec.describe Assignment, type: :model do
  before(:all) do 
      @project = FactoryGirl.create(:project)
      @resource = FactoryGirl.create(:resource)
      @assignment = Assignment.create!(project_id: @project.id,
                                resource_id: @resource.id,
                                start_date: '2015-07-01',
                                end_date:'2015-08-15')
  end

  it { is_expected.to have_db_column(:project_id) }
  it { is_expected.to have_db_column(:resource_id) }
  it { is_expected.to have_db_column(:start_date) }
  it { is_expected.to have_db_column(:end_date) }
  
  it { is_expected.to belong_to(:project) }
  it { is_expected.to belong_to(:resource) }
end