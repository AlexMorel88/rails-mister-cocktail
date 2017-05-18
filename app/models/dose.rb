class Dose < ApplicationRecord
  belongs_to :coktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :coktail, presence: true
  validates :ingredient, presence: true
  validates_uniqueness_of :description, :scope => [:coktail, :ingredient]

end
