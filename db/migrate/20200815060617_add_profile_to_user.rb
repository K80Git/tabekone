class AddProfileToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :adress, :string
    add_column :users, :age, :integer
    add_column :users, :likeTast, :integer
    add_column :users, :washoku, :integer
    add_column :users, :yousyoku, :integer
    add_column :users, :tyuuka, :integer
    add_column :users, :ethnic, :integer
    add_column :users, :meat, :integer
    add_column :users, :fish, :integer
    add_column :users, :vegetable, :integer
    add_column :users, :Al, :integer
    add_column :users, :Sw, :integer
    add_column :users, :cp,  :integer
  end
end
