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
        fill_in 'Start', with: 'Barbican'
        fill_in 'End', with: 'Whitechapel'
        fill_in 'Time and date', with: '2018-02-06T13:00:02-0500'
        fill_in 'Arrival', with: 'arrival'
      end
      click_button 'Set'
      expect(page).to have_content('Your predicted travel time from
                            Barbican to Whitechapel is 26 minutes')
    end
  end

end
