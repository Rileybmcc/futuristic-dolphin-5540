require 'rails_helper'

RSpec.describe Ride, type: :model do
  describe 'relationships' do
    it { should belong_to(:amusement_park) }
  end

  describe 'order by' do

    it 'can order rides by thrill rating' do
      @six_flags = AmusementPark.create!(name: 'Six Flags', admission_cost: 75)
      @hurler = Ride.create(name: 'The Hurler', thrill_rating: 7, open: true)
      @scrambler = Ride.create(name: 'The Scrambler', thrill_rating: 4, open: true)
      @six_flags.rides << @hurler
      @six_flags.rides << @scrambler

# require "pry"; binding.pry
      expect(Ride.all.ordered).to eq([@hurler, @scrambler])
    end
  end
end
