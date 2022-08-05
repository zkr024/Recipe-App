require 'rails_helper'

RSpec.describe Food, type: :model do
  subject { Food.new(user_id: 1, name: 'apple', measurement_unit: 'g') }

  before { subject.save }

  it 'price is not string' do
    subject.price = 5
    expect(subject).to be_valid
  end

  it 'quantity is not a string' do
    subject.quantity = 10
    expect(subject).to be_valid
  end
end
