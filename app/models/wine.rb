class Wine < ApplicationRecord
  #Validations
  validates :name, presence: true, uniqueness: true

  #Associations
  has_many :wine_strains
  has_many :strains, through: :wine_strains
end
