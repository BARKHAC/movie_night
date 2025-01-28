class CreateFilmNights < ActiveRecord::Migration[6.1]
  def change
    create_table :film_nights do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :date
      t.datetime :time

      t.timestamps
    end
  end
end
