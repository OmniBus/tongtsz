require 'rails_helper'

describe Language, type: :model do
  before(:each) { @language = Language.new(name: 'English', code: 'en') }

  subject { @language }

  it { should respond_to(:name) }

  it { should respond_to(:code) }

  it "#name returns a string" do
    expect(@language.name).to match 'English'
  end

  it "#code returns a string" do
    expect(@language.code).to match 'en'
  end

end
