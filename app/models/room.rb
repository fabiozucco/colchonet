class Room < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user
  def complete_name
    "#{title}, #{location}"
  end
end