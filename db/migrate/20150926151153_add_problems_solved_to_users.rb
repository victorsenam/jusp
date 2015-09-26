class AddProblemsSolvedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :problems_solved, :integer
  end
end
