class Genre < ApplicationRecord
    #has_many :song_genres
    #has_many :songs, :through => :song_genres
    has_and_belongs_to_many :songs
end
