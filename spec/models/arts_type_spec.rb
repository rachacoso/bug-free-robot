require 'rails_helper'

RSpec.describe ArtsType, type: :model do
  it { should have_and_belong_to_many(:media_items) }
end
