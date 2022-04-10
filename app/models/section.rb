class Section < ApplicationRecord

   has_many :member
   
   validates :section_name, {presence: true, uniqueness: true}
  
end
