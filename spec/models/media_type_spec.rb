require 'rails_helper'

RSpec.describe MediaType, type: :model do
  it { should have_many(:media_items) }
end
