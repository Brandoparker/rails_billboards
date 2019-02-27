class User < ApplicationRecord
  has_many :billboards, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
