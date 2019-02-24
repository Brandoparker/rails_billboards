class Artist < ApplicationRecord
  belongs_to :song
  has_many :songs
end
