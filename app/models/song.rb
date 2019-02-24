class Song < ApplicationRecord
  belongs_to :billboard
  has_many :comments, dependent: :destroy
end
