class Attack < ApplicationRecord
  belongs_to :attack_type
  belongs_to :unit
end
