class Description < ActiveRecord::Base
  has_many :explanations
  has_many :words, through: :explanations

  validates :content, presence: true
end
