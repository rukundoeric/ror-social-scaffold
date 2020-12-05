require_relative '../rails_helper'

RSpec.describe Comment, type: :model do
  it 'validates comment content' do
    user = User.create(name: 'eric', email: 'eric@gmail.com', password: 'eric055')
    post = user.posts.new(content: 'Hello there , how are you doing!')
    comment = post.comments.new(user_id: user.id, content: 'good! ')
    comment1 = post.comments.new(user_id: user.id, content: nil)
    expect(comment).to be_valid
    expect(comment1).not_to be_valid
  end

  describe 'ActiveRecord associations' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end
end
