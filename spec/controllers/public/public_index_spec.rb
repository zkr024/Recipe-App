require 'rails_helper'

RSpec.describe 'Public', type: :feature do
  before :each do
    visit root_path
    click_link 'Public recipes'
  end

  it 'renders the public index page' do
    expect(current_path).to eql('/publics')
  end

  it 'Displays the pubic recipes page' do
    expect(page).to have_content('Public Recipes')
  end
end
