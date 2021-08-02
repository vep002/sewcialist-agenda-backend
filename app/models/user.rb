class User < ApplicationRecord
    has_many :projects
    has_many :tasks, through: :projects
    has_secure_password
    
    validates :username, uniqueness: {case_sensitive: false}
    validates :password, length: {in: 5..10}
end
