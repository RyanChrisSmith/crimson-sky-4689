require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it {should validate_presence_of :name}
  it {should validate_numericality_of :calories}

  it {should have_many :dish_ingredients}
  it {should have_many(:dishes).through(:dish_ingredients)}
end