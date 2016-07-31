require 'spec_helper'
require 'rails_helper'

describe 'account creation' do 
  it 'allows user to create account' do
    visit root_path
    click_link 'Create Account'

    fill_in 'Name', with: 'Artem'
    fill_in 'Email', with: 'ezhara0405@gmail.com'
    fill_in 'Password', with: '123234'
    fill_in 'Password Confirmation', with: '123234'
    fill_in 'Subdomain', with: 'test_subdomain'
    click_button 'Create Account'

    expect(page).to have_content('Signed up successfully')    
  end
end