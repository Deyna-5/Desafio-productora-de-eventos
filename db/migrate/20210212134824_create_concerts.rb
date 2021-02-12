class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.time :duration
      t.integer :audience
      t.date :event_date

      t.timestamps
    end
  end
end
