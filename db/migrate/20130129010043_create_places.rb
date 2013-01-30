class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :location
      t.text :comments
      t.string :url
      t.string :website
      t.string :cuisine

      t.timestamps
    end
  end
end
