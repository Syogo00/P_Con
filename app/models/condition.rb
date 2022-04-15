class Condition < ApplicationRecord
  belongs_to :member

  enum status: { usually: 0, bad: 1, good: 2 }

  validates :temperature, {presence: true, numericality: true}
  validates :explation, length: { maximum: 50}


end
