class Song < ApplicationRecord
    has_one_attached :image
    has_one_attached :source
    
    has_many :comment, -> { order "created_at DESC"}
    
    #has_many :song_genres
    #has_many :genres, :through => :song_genres
    has_and_belongs_to_many :genres
end
