require 'rails_helper'

RSpec.describe ChoiceCategory, type: :model do

  before { @model = FactoryGirl.build(:choice_category) }

  subject { @model }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:id) }
  it { should be_valid }

  it { should have_many(:choices) }
end
