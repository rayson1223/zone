class User < ActiveRecord::Base
  has_many :zones
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: { minimum: 3 }
  validates :email,format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
