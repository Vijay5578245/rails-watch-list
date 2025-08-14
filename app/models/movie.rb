class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
   validates :title, :overview, :poster_url, :rating, presence: true
   validates :rating, numericality: true

   validates :title, presence: true, uniqueness: true
end
