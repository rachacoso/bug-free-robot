require 'rails_helper'

RSpec.describe MediaItem, type: :model do
  it { should have_and_belong_to_many(:arts_types) }
  it { should have_many(:mood_scores) }
  it { should have_many(:moods).through(:mood_scores) }
  it { should belong_to(:media_type) }
end
