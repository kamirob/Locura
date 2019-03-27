class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :department      
  has_many :loans 
  has_one_attached :avatar

  #def thumbnail
   # return self.avatar.variant(resize: "55x55")
  #end
end
