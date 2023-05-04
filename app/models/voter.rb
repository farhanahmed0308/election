class Voter < ApplicationRecord
    validates :name, presence: true
    validates :id_card, uniqueness: { case_sensitive: false }
end