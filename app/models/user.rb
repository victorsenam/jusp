class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :problems
  validates :name, presence: true, length: { maximum: 30 },
                   uniqueness: { case_sensitive: false }
  validates :email, confirmation: true, presence: true, length: { maximum: 255 }
  validates :email_confirmation, presence: true
  validates :password, confirmation: true, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
