class Condition < ApplicationRecord
  belongs_to :member

  enum status: { usually: 0, bad: 1, good: 2 }



end
