require 'rails_helper'

RSpec.describe 'Recipe', type: :feature do
  before :each do
    @user = User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'renders the recipe index page' do
    click_link 'Recipes'
    expect(current_path).to eql('/users/1/recipes')
  end

  it 'Displays the recipe list' do
    click_link 'Recipes'
    expect(page).to have_content('Recipes list')
  end

  it 'Can add recipes' do
    click_link 'Recipes'
    expect(page).to have_content('Add Recipe')
  end
end
