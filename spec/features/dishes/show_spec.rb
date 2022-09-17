require 'rails_helper'

RSpec.describe "Dishes Show page" do 
  before :each do

  end
  it '' do
# When I visit a dish's show page
    visit "/dishes/#{dish.id}"
# I see the dish’s name and description
    expect(page).to have_content("dish name")
    expect(page).to have_content("description")
    expect(page).to have_content("ingredients")
# And I see a list of ingredients for that dish
    expect(page).to have_content("chefs name")
# And I see the chef's name.
  end
end