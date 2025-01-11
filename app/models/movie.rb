class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true, uniqueness: true
  validates :poster_url, presence: true
  validates :rating, presence: true

  private

  def check_bookmarks
    errors.add(:base, "Cannot delete movie with bookmarks") if bookmarks.exists?
  end
end
