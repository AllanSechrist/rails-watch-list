class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list }, presence: true
  validates :list, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
end
