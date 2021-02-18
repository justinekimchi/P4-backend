class User < ApplicationRecord
    has_many :user_movies, dependent: :destroy
    has_many :movies, through: :user_movies
    validates :username, uniqueness: true, presence: true 
end
