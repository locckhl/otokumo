class AddUserId < ActiveRecord::Migration[6.0]
  def change
    add_reference :songs, :user, index: true, null: false
  end
end
