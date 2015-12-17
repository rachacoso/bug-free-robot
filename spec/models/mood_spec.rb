require 'rails_helper'

RSpec.describe Mood, type: :model do
  it { should have_many(:mood_scores) }
  it { should have_many(:mood_choices) }
  it { should have_many(:media_items).through(:mood_scores) }
  it { should have_many(:choices).through(:mood_choices) }
end
