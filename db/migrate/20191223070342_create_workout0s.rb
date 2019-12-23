class CreateWorkout0s < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|

      t.string :name
      t.string :date
      t.string :img
      t.string :note
      t.string :muscles
      t.string :weight
      t.integer :set
      t.integer :rep

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
