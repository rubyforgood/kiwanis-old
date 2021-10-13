class AddClubIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :club, null: false, foreign_key: true
  end
end
