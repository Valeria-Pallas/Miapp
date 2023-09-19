class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_secure_password
  has_many :articles, dependent: :destroy # Esto establece la asociación entre User y Article
  has_many :comments

end
