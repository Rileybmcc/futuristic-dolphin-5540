require 'rails_helper'

RSpec.describe 'the mechanics index' do

  before :each do
    @mechanic1 = Mechanic.create(name: 'Howard Wolowitz', experience: 5)
    @mechanic2 = Mechanic.create(name: 'Sheldon Cooper', experience: 2)
  end

  it 'can display all mechanics names' do
    visit '/mechanics'

    expect(page).to have_content("Howard Wolowitz")
    expect(page).to have_content("Sheldon Cooper")
  end

  it 'can display years of experience' do
    visit '/mechanics'

    expect(page).to have_content("Years of Experience: 5")
    expect(page).to have_content("Years of Experience: 2")
  end

  it 'can display the average experience of all mechanics' do
    visit '/mechanics'
    # save_and_open_page
    expect(page).to have_content("Average Mechanic Experience: 3.5")
  end

end
