class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail
  validates_presence_of :amount, :cocktail_id, :ingredient_id
end
