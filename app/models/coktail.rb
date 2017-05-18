class Coktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, :dependent => :destroy
  has_many :ingredients

end
