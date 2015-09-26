class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :problems
  validates :name, presence: true, length: { maximum: 30 },
                   uniqueness: { case_sensitive: false }
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }
end
