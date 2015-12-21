require 'rails_helper'

RSpec.describe MediaType, type: :model do

  before { @model = FactoryGirl.build(:media_type) }

  subject { @model }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should be_valid }

  it { should have_many(:media_items) }
end
