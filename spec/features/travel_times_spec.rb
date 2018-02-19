require 'rails_helper'

RSpec.feature "Travel Times", type: :feature do

  context "title is TravelTimeApp" do
    scenario "user should see Travel Time App in title" do
      visit index_path
      expect(title).to have_content 'TravelTimeApp'
    end
  end

  # context "input travel input" do
  #
  # end

end
