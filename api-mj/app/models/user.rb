class User < ApplicationRecord
    has_secure_password

    has_many :prompts
    has_many :manifestations 
    validates :name, presence: true
    validates :name, uniqueness: true

end
