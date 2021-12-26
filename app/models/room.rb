class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user # Owner
  validates :name, presence: true
  broadcasts

  def picture
    user.profile_picture_xs
  end
end
