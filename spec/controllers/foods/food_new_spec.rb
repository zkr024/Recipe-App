require 'rails_helper'

RSpec.describe 'Food', type: :feature do
  before :each do
    @user = User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    click_link 'Food list'
  end

  it 'renders the food new page' do
    click_link 'Add Food'
    expect(current_path).to eql('/users/1/foods/new')
  end

  it 'Displays the form to add food' do
    click_link 'Add Food'
    expect(page).to have_content('Add Food Section')
  end

  it 'has a submit button' do
    click_link 'Add Food'
    expect(page).to have_content('Add')
  end

  it 'The form can be submitted' do
    click_link 'Add Food'
    click_on 'Add'
    expect(current_path).to eql('/users/1/foods')
  end
end
