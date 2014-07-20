class Explanation < ActiveRecord::Base
  belongs_to :word
  belongs_to :description

  validates :word, uniqueness: { scope: :description }

end
