require 'spec_helper'

describe 'user signup' do
  it 'attempting to login without an account' do
    # Given I don't have an account
    visit('/users/sign_in')
    within('form.new_user') do
      fill_in('Email', with: 'hello@test.com')
      fill_in('Password', with: 'myrealpassword')
      click_button("Sign in")
    end
    # Then I should see an error saying I am not registered
  end
end