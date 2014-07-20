require 'rails_helper'

describe Word, type: :model do
  before(:each) { @word = Word.new(name: 'a word') }

  subject { @word }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@word.name).to match 'a word'
  end
  
  it { should have_many(:explanations) }
  it { should have_many(:descriptions).through(:explanations) }
  it { should validate_presence_of(:name)}
  it { should validate_uniqueness_of(:name) }
end
