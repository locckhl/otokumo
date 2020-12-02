class CreateGenresSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :genres_songs do |t|
      t.references :song, index: true, foreign_key: true
      t.references :genre, index: true, foreign_key: true
    end
  end
end
