class User < ActiveRecord::Base
  has_many :galleries
  has_many :images, through: :galleries
  has_many :group_memberships
  has_many :groups, through: :group_memberships

  validates :email, presence: true, uniqueness: true

  validates :password_digest, presence: true

  def member?(group)
    groups.include?(group)
  end

  def join
    groups << group
  end

  def leave
    groups.destroy(group)
  end
end
