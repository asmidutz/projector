require 'rails_helper'

RSpec.feature 'Listing all Templates' do
    scenario 'returns a message when there are no templates to view' do
        visit "/"
        click_link 'Templates'
        
        expect(page.current_url).to eq(templates_url)
        expect(page).to have_content('0 Templates')
    end
end