class CreateProblemsUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :problems_users, id: false do |t|
      t.integer :problem_id
      t.integer :user_id
    end
    
    add_index :problems_users, :problem_id
    add_index :problems_users, :user_id
  end
end
