class Song < ApplicationRecord
  belongs_to :bboard, optional: true
  belongs_to :artist 
end
