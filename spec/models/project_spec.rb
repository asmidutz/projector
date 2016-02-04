require 'rails_helper'

RSpec.describe 'Project', type: :model do
   before(:each) do
        @project1 = Project.new(name: 'Test Project', description: 'Test purposes', start_date: '2015-01-28', projected_end_date: '2015-12-15', 
          actual_end_date: '2015-01-28', budget: 1000.00, cost: 2000.00 ) 
    end
    
    it 'should have a name feild' do
          expect(@project1.name).to eq('Test Project')
    end
    it 'should have a description feild' do
         expect(@project1.description).to eq('Test purposes')
    end
    it 'should have a start_date feild' do
    end
    it 'should have a Projected End Date feild' do
    end
    it 'should have a Actual End Date feild' do
    end
    it 'should have a Budget feild' do
    end
    it 'should have a cost feild' do
    end
end
