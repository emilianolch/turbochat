class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :avatar, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :rooms, dependent: :destroy
  
  def profile_picture
    avatar.variant(resize_to_fit: [nil, 100]) if avatar.attached?
  end

  def profile_picture_xs
    avatar.variant(resize_to_fit: [nil, 40]) if avatar.attached?
  end

  def to_s
    email.match(/(.+)@/)[1]
  end

end
