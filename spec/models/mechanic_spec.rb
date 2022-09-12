require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  describe 'attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:experience) }
  end

end
