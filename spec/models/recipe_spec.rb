require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { Recipe.new(user_id: 1, name: 'Burguer', description: "it's an easy one") }

  before { subject.save }

  it 'cooking_time is not a string' do
    subject.cooking_time = 1
    expect(subject).to be_valid
  end

  it 'preparation_time is not a string' do
    subject.preparation_time = 30
    expect(subject).to be_valid
  end

  it 'should be private by default' do
    expect(subject.public).to eql(false)
  end
end
