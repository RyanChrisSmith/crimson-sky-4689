class Chef < ApplicationRecord
  validates_presence_of :name

  has_many :dishes

  def all_uniq_ingredients
    uniq_ingredients = []
    dishes.each do |dish|
      dish.ingredients.each do |ingredient|
        uniq_ingredients << ingredient
      end
    end
    uniq_ingredients.uniq
  end

  def most_popular_ingredients
   require 'pry' ; binding.pry
  end
end