class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :avatar, dependent: :destroy
  has_many :messages, dependent: :destroy

  def profile_picture
    if avatar.attached?
      avatar.variant(resize_to_fit: [nil, 100])
    else
      "/assets/default_profile.jpg"
    end
  end

  def to_s
    email.match(/(.+)@/)[1]
  end

end
