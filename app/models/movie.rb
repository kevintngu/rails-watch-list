class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  has_many :bookmarks
  # has_and_belongs_to_many :lists, through: :bookmarks

end
