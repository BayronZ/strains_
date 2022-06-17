class Strain < ApplicationRecord
  #Validations
  validates :name, presence: true, uniqueness: true

  #Associations
  has_many :wine_strains
  has_many :wines, through: :wine_strains
end
