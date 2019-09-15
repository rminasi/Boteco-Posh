class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true, allow_blank: true
  validates :cocktail, uniqueness: { scope: :ingredient_id }
end
