class RemoveAssociationFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :association, :string
  end
end
