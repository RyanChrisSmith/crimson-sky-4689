require 'rails_helper'

RSpec.describe 'Chefs Ingredients index page' do
  before :each do
    @gordon = Chef.create!(name: "Gordon Ramsey")
    @jj = Chef.create!(name: "JJ Johnson")
    @wolf = Chef.create!(name: "Wolfgang Puck")
    @pie = @gordon.dishes.create!(name: "Key Lime Pie", description: "tasty dessert")
    @nachos = @gordon.dishes.create!(name: "The Best Nachos", description: "great for watching the game")
    @cobb = @gordon.dishes.create!(name: "Cobb Salad", description: "a fairly healthy choice")
    @jerky = @jj.dishes.create!(name: "Beef Jerky", description: "snacking time")
    @fajitas = @jj.dishes.create!(name: "Fajitas", description: "the best tex-mex you can get")
    @cornbread = @wolf.dishes.create!(name: "Cornbread", description: "home cookin'")
    @jambalaya = @wolf.dishes.create!(name: "Jambalaya", description: "the best of nawlins'")
    @salt = Ingredient.create!(name: "Salt", calories: 50)
    @wheat = Ingredient.create!(name: "Wheat", calories: 79)
    @sugar = Ingredient.create!(name: "Sugar", calories: 130)
    @water = Ingredient.create!(name: "Water", calories: 1)
    @flour = Ingredient.create!(name: "Flour", calories: 100)
    DishIngredient.create!(dish: @pie, ingredient: @salt)
    DishIngredient.create!(dish: @pie, ingredient: @wheat)
    DishIngredient.create!(dish: @pie, ingredient: @sugar)
    DishIngredient.create!(dish: @pie, ingredient: @water)
    DishIngredient.create!(dish: @pie, ingredient: @flour)
    DishIngredient.create!(dish: @nachos, ingredient: @salt )
    DishIngredient.create!(dish: @nachos, ingredient: @wheat )
    DishIngredient.create!(dish: @nachos, ingredient: @water )
    DishIngredient.create!(dish: @nachos, ingredient: @flour )
    DishIngredient.create!(dish: @cobb, ingredient: @salt)
    DishIngredient.create!(dish: @cobb, ingredient: @water)
    DishIngredient.create!(dish: @cobb, ingredient: @flour)
    DishIngredient.create!(dish: @jerky, ingredient: @salt)
    DishIngredient.create!(dish: @jerky, ingredient: @sugar)
    DishIngredient.create!(dish: @jerky, ingredient: @water)
    DishIngredient.create!(dish: @jerky, ingredient: @flour)
    DishIngredient.create!(dish: @fajitas, ingredient: @salt)
    DishIngredient.create!(dish: @fajitas, ingredient: @flour)
    DishIngredient.create!(dish: @fajitas, ingredient: @sugar)
    DishIngredient.create!(dish: @cornbread, ingredient: @salt)
    DishIngredient.create!(dish: @cornbread, ingredient: @wheat)
    DishIngredient.create!(dish: @cornbread, ingredient: @flour)
    DishIngredient.create!(dish: @cornbread, ingredient: @water)
    DishIngredient.create!(dish: @jambalaya, ingredient: @salt)
    DishIngredient.create!(dish: @jambalaya, ingredient: @wheat)
    DishIngredient.create!(dish: @jambalaya, ingredient: @flour)
  end
  it 'will show a unique list of all the ingredients this chef uses' do
    visit "/chefs/#{@gordon.id}/ingredients"

    expect(page).to have_content("Salt")
    expect(page).to have_content("Wheat")
    expect(page).to have_content("Sugar")
    expect(page).to have_content("Water")
    expect(page).to have_content("Flour")
  end

end