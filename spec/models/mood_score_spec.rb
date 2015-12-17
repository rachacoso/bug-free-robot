require 'rails_helper'

RSpec.describe MoodScore, type: :model do
  it { should belong_to(:media_item) }
  it { should belong_to(:mood) }
end
