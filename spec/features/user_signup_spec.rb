require 'spec_helper'

describe 'user signup' do
  it 'attempting to login without an account' do
    # Given I don't have an account
    visit('/users/sign_in')
    # And fill in my email and password
    # And click Sign in
    # Then I should see an error saying I am not registered
  end
end