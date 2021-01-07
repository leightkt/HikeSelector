class CreateHikesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.boolean :dog_friendly
      t.integer :distance
      t.integer :elevation
      t.string :difficulty
    end
  end
end
