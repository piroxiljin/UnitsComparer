class Unit < ApplicationRecord
  belongs_to :race
  has_many :attacks, dependent: :destroy
  accepts_nested_attributes_for :attacks, allow_destroy: true
end
