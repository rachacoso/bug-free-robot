require 'rails_helper'

RSpec.describe ArtsType, type: :model do

  before { @model = FactoryGirl.build(:arts_type) }

  subject { @model }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should be_valid }

  it { should have_and_belong_to_many(:media_items) }

	it { should validate_uniqueness_of(:name) }
	it { should validate_presence_of(:name) }
end
