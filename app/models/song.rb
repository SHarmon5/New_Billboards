class Song < ApplicationRecord
  belongs_to :bboard
  belongs_to :artist
end
