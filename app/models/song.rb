class Song < ApplicationRecord
  belongs_to :bboard, optional: true
  belongs_to :artist, optional: true
end
