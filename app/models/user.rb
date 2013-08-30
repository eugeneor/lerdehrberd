class User < ActiveRecord::Base
  attr_accessible :display_name, :email
  validates :email, presence: true, uniqueness: true
  validates :display_name, presence: true
end
