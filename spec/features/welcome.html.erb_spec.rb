require 'rails_helper'

RSpec.feature 'Welcome', type: :feature, js: true do
  scenario 'Visiting the root path' do
    visit root_path

    expect(page).to have_content('BUDGET')
  end

  scenario 'Click sign in' do
    visit root_path
    click_link 'LOG IN'
    expect(page).to have_current_path('/users/sign_in')
  end

  scenario 'Click sign up' do
    visit root_path
    click_link 'SIGN UP'
    expect(page).to have_current_path('/users/sign_up')
  end
end
