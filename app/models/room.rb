class Room < ApplicationRecord
  extend FriendlyId

  mount_uploader :picture, PictureUploader
  friendly_id :title, use: [:slugged, :history]

  validates_presence_of :title
  validates_presence_of :slug

  friendly_id :title, use: [:slugged, :history]

  has_many :reviews, dependent: :destroy
  has_many :reviewed_rooms, through: :reviews, source: :room
  belongs_to :user
  def complete_name
    "#{title}, #{location}, #{description}"
  end

  def self.search(query)
    if query.present?
      where(['location LIKE :query OR title LIKE :query OR description LIKE :query', query: "%#{query}"])
    else
      unscoped
    end
  end
end