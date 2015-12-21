require 'rails_helper'

RSpec.describe MediaItem, type: :model do

  before { @model = FactoryGirl.build(:media_item) }

  subject { @model }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:times_served) }
  it { should respond_to(:duration) }
  it { should be_valid }

  it { should have_and_belong_to_many(:arts_types) }
  it { should have_many(:mood_scores) }
  it { should have_many(:moods).through(:mood_scores) }
  it { should belong_to(:media_type) }
end
