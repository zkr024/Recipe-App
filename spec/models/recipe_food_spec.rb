require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  subject { RecipeFood.new(recipe_id: 1, food_id: 1) }

  before { subject.save }

  it 'quantity is not string' do
    subject.quantity = 5
    expect(subject).to be_valid
  end
end
