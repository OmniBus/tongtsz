class Explanation < ActiveRecord::Base
  belongs_to :word
  belongs_to :description
end
