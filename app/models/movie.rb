class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_bookmarks

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true, uniqueness: true

  private

  def check_bookmarks
    errors.add(:base, "Cannot delete movie with bookmarks") if bookmarks.exists?
  end
end
