class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
    validates_presence_of :email
    validates_uniqueness_of :email
    
  has_one_attached :avatar
end
