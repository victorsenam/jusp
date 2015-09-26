class AddInstituteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :institute, :string
  end
end
