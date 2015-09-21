class User < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, length: { maximum: 30 },
                   uniqueness: { case_sensitive: false }
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }
end
