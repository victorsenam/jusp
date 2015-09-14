class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.text :enunciation
      t.text :test_case
      t.integer :difficulty

      t.timestamps null: false
    end
  end
end
