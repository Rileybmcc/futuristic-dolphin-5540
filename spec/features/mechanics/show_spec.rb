require 'rails_helper'

RSpec.describe 'the mechanics index' do

  before :each do
    @mechanic1 = Mechanic.create(name: 'Howard Wolowitz', experience: 5)
    @mechanic2 = Mechanic.create(name: 'Sheldon Cooper', experience: 2)
    @hurler = Ride.create(name: 'The Hurler', thrill_rating: 7, open: true)
    @scrambler = Ride.create(name: 'The Scrambler', thrill_rating: 4, open: true)

  end

  it 'can visit mechanic show page and display correct name' do
    visit "/mechanics/#{@mechanic1.id}"

    expect(page).to have_content("Howard Wolowitz")
  end

  it 'can show experience' do
    visit "/mechanics/#{@mechanic1.id}"

    expect(page).to have_content("Years of Experience: 5")
  end

  xit 'can list rides working on' do
    visit "/mechanics/#{@mechanic1.id}"

    expect(page).to have_content("The Hurler")
    expect(page).to have_content("The Scrambler")

  end

end
