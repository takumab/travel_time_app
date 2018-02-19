require 'rails_helper'

RSpec.feature "Travel Times", type: :feature do

  context "title is TravelTimeApp" do
    scenario "user should see TravelTimeApp in title" do
      visit index_path
      expect(title).to have_content 'TravelTimeApp'
    end
  end

  context "Get predicted travel time" do
    scenario "should be successful" do
      visit index_path
      within('form') do
        fill_in 'Start', with: '51.5201, 0.0933'
        fill_in 'End', with: '51.5461,0.0742'
        fill_in 'Arrival', with: '2018-02-06T13:00:02-0500'
      end
      click_button 'Set'
      expect(page).to have_content('Travel time: 29 minutes')
    end
  end

end
