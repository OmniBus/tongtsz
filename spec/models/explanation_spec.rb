require 'rails_helper'

describe Explanation, type: :model do
  it { should belong_to(:word) }
  it { should belong_to(:description) }
end
