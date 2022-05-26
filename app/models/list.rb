class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  # has_and_belongs_to_many :movies, through: :bookmarks
  has_many :movies, through: :bookmarks
end
