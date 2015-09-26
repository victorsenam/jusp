class AddAssociationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :association, :string
  end
end
