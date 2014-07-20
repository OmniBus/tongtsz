class Word < ActiveRecord::Base
  has_many :explanations
  has_many :descriptions, through: :explanations

  validates :name, presence: true, uniqueness: true
end
