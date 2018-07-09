class Note < ApplicationRecord
    belongs_to :insect

    validates :insect, presence: true
    validates :text, presence: true
end
