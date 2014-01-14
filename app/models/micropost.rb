class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}

  def self.from_users_followed_by(user)
    #方式一：先取出所有ids再查找，数据量大有性能问题
    #followed_user_ids = user.followed_user_ids
    #where("user_id IN (?) OR user_id = ?", followed_user_ids, user)

    #方式二： 直接从数据库层面取回结果，性能好
    followed_user_ids = 'SELECT followed_id FROM relationships
                             WHERE follower_id = :user_id'
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)

  end
end
