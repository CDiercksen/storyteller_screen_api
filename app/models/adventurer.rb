class Adventurer < ApplicationRecord
    validates :name, presence: true
    validates :armor_class, :hit_point_maximum, :spell_dc, numericality: {greater_than_or_equal_to: 1}
end
