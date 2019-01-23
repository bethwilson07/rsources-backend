class User < ApplicationRecord
  validates :password, presence: true, length: { in: 6..20 }, on: :create
  validates :username, uniqueness: {message: ->(object, data) do
        "Sorry, #{data[:username]} is taken already! Please try again."
      end
    }, on: :create

  has_secure_password
  has_many :resources
  has_many :posts
  has_many :comments
end
