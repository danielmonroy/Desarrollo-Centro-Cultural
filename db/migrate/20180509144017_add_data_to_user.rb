class AddDataToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_level, :integer
    add_column :users, :name, :string
  end
end
