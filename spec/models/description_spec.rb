require 'rails_helper'

describe Description, type: :model do
  before(:each) { @description = Description.new(content: 'some description') }

  subject { @description }

  it { should respond_to(:content) }

  it "#content returns a string" do
    expect(@description.content).to match 'some description'
  end

  it { should have_many(:explanations) }
  it { should have_many(:words).through(:explanations) }
  it { should validate_presence_of(:content) }
end
