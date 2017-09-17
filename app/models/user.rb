class User < ActiveRecord::Base
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 3, maximun: 25}  
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 5, maximun: 100 },
            format: { with: VALID_EMAIL_REGEX }
end