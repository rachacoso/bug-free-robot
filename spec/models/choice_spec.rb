require 'rails_helper'

RSpec.describe Choice, type: :model do

  before { @model = FactoryGirl.build(:choice) }

  subject { @model }

  it { should respond_to(:name) }
  it { should respond_to(:times_served) }
  it { should respond_to(:times_selected) }
  it { should be_valid }

	it { should validate_uniqueness_of(:name) }
	it { should validate_presence_of(:name) }
  it { should validate_presence_of(:choice_category) }

  it { should belong_to(:choice_category) }
  it { should have_many(:mood_choices) }
  it { should have_many(:moods).through(:mood_choices) }
end
