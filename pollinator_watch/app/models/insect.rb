class Insect < ApplicationRecord
    has_many :notes, foreign_key: "insect_id", dependent: :destroy
    # has_one_attached :image

    validates :name, presence: true
    validates :species, presence: true
    validates :latitude, presence: true
    validates :longitude, presence: true
    validates :plant, presence: true
    
end
