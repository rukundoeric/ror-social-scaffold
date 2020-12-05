require_relative '../rails_helper'

RSpec.describe Post, type: :model do
  it 'validates comment content' do
    user = User.create(name: 'eric', email: 'eric@gmail.com', password: 'eric055')
    post = user.posts.new(content: 'Hello there , how are you doing!')
    post1 = user.posts.new(content: nil)
    expect(post).to be_valid
    expect(post1).not_to be_valid
  end

  context 'Associations tests' do
    it { should belong_to(:user) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
  end
end
