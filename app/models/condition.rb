class Condition < ApplicationRecord
  belongs_to :member

  enum status: { usually: 0, good: 1, bad: 2 }

  validates :temperature, { presence: true, numericality: true }
  validates :explation, length: { maximum: 50 }
end
