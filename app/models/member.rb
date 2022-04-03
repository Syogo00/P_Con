class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   belongs_to :section

   validates :first_name, {presence: true}
   validates :last_name, {presence: true}
   validates :first_name_kana, {presence: true}
   validates :last_name_kana, {presence: true}
   validates :birth_yaer, {presence: true}
   validates :birth_month, {presence: true}
   validates :first_day, {presence: true}


end
