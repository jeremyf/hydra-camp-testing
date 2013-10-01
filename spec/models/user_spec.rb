require 'spec_helper'

describe User do

  it 'should allow users to be created' do
    # Given I don't have any users
    User.count.should == 0

    # When I create a user
    User.create!(email: 'jeremy.n.friesen@gmail.com', password: 'password')

    # Then the User.count should be 1
    User.count.should == 1
  end

end
