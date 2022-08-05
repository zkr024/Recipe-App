require 'rails_helper'

RSpec.describe 'Recipe', type: :feature do
  before :each do
    @user = User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    click_link 'Recipes'
    click_link 'Add Recipe'
  end

  it 'renders the recipe new page' do
    expect(current_path).to eql('/users/1/recipes/new')
  end

  it 'has a form to add a recipe' do
    expect(page).to have_content('Recipe')
  end

  it 'Can add recipes' do
    click_on 'Add'
    expect(current_path).to eql('/users/1/recipes')
  end
end
