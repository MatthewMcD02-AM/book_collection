# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
        title: 'Final Fantasy',
        author: 'Joshua Rosfield',
        published_date: Date.new(2023, 6, 22),
        price: 19.99,
        publisher: 'Square Enix',
        pages: 563,
        release_date: Date.new(2023, 6, 23),
        )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a bas base stats' do
    subject.title = nil
    subject.author = nil
    subject.published_date = nil
    subject.price = nil
    subject.publisher = nil
    subject.pages = nil
    subject.release_date = nil
    expect(subject).not_to be_valid
  end
end