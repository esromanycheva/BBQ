class Photo < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :event, presence: true
  validates :user, presence: true

  has_one_attached :photo

  scope :persisted, -> { where "id IS NOT NULL" }
end
