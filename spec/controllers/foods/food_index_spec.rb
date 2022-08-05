require 'rails_helper'

RSpec.describe 'Food', type: :feature do
  before :each do
    @user = User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'renders the food index page' do
    click_link 'Food list'
    expect(current_path).to eql('/users/1/foods')
  end

  it 'Displays the food table' do
    click_link 'Food list'
    expect(page).to have_content('Food section')
  end

  it 'Has an option to add food' do
    click_link 'Food list'
    expect(page).to have_content('Add Food')
  end

  it 'Has an option to delete food' do
    click_link 'Food list'
    expect(page).to have_content('Delete')
  end
end
