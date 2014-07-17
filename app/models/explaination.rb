class Explaination < ActiveRecord::Base
  belongs_to :word
  belongs_to :description
end
