class CreateUserhikeTable < ActiveRecord::Migration[6.0]
  def change
    create_table :userhikes do |t|
      t.references :user, foreign_key: true
      t.references :hike, foreign_key: true
    end
  end
end
