class Song < ApplicationRecord
    has_one_attached :image
    has_one_attached :source
    
    has_many :comment, -> { order "created_at DESC"}
end
