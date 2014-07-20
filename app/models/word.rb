class Word < ActiveRecord::Base
  has_many :explanations
  has_many :descriptions, through: :explanations
end
