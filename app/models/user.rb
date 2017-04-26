class User < ActiveRecord::Base
  validates :email, :image, presence: true
  validates :email, email: true
end
