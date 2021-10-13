class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
