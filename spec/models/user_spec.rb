require 'rails_helper'

describe User do

  let(:user) { User.new }

  it { expect(user).to respond_to :email }
  it { expect(user).to respond_to :authentication_token }
end
