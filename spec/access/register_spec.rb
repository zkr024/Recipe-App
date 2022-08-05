require 'rails_helper'

RSpec.describe 'User', type: :feature do
  scenario 'Sign Up' do
    visit new_user_registration_path
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    expect(current_path).to eql(users_path)
  end
end
