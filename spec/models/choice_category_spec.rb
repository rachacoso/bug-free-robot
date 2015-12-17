require 'rails_helper'

RSpec.describe ChoiceCategory, type: :model do
  it { should have_many(:choices) }
end
