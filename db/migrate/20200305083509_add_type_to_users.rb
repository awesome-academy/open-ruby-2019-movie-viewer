class AddTypeToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :type, :string
  end

  def down
    remove_column :users, :role
  end
end
