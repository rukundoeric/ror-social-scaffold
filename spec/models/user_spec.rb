require_relative '../rails_helper'

RSpec.describe User, type: :model do
  it 'validates name, username and email' do
    user = User.new(name: '')
    expect(user.valid?).to be(false)
  end

  describe 'ActiveRecord associations' do
    it { should have_many(:posts) }
    it { should have_many(:comments) }
    it { should have_many(:friendships) }
    it { should have_many(:friends).through(:friendships) }
    it { should have_many(:friend_requests_sent) }
    it { should have_many(:friend_requests_received) }
    it { should have_many(:friend_requests).through(:friend_requests_received) }
  end
end
