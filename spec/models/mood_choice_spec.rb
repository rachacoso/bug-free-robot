require 'rails_helper'

RSpec.describe MoodChoice, type: :model do
  it { should belong_to(:mood) }
  it { should belong_to(:choice) }
end
