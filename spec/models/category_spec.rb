require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { create(:category) }
  it 'validity' do
    expect(category).to be_valid
  end

  it 'name is not empty' do
    category.name = ''
    expect(category).not_to be_valid
  end

  it 'user is associated' do
    category.user = nil
    expect(category).not_to be_valid
  end

  it 'user associated is validated' do
    expect(category.user).to be_valid
  end
end