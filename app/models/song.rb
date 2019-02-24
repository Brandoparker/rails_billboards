class Song < ApplicationRecord
  belongs_to :billboard
  belongs_to :artist
end
