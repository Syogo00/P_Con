class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   belongs_to :section
   has_many :condition
   
    def self.search(search)
      search ? where(["first_name like? OR last_name like?", "%#{search}%", "%#{search}"]) : all
    end
 
   enum attendance_status: {leaving_work: 0, attendance: 1 }

   validates :first_name, {presence: true}
   validates :last_name, {presence: true}
   validates :first_name_kana, {presence: true}
   validates :last_name_kana, {presence: true}
   validates :birth_year, {presence: true}
   validates :birth_month, {presence: true}
   validates :birth_day, {presence: true}
   
   


end
