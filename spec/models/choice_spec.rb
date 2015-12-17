require 'rails_helper'

RSpec.describe Choice, type: :model do
  it { should belong_to(:choice_category) }
  it { should have_many(:mood_choices) }
  it { should have_many(:moods).through(:mood_choices) }
end
