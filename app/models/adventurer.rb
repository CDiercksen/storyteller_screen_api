class Adventurer < ApplicationRecord
    validates :name, :armor_class, :hit_point_maximum, :spell_dc, presence: true
end
