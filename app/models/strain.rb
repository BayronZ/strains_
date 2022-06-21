class Strain < ApplicationRecord
  #Validations
  validates :name, presence: true, uniqueness: true

  before_validation :sanitize

  private
  def sanitize
    self.name = self.name.strip.camelize unless self.name.nil?
  end



  #Associations
  has_many :wine_strains
  has_many :wines, through: :wine_strains
end
