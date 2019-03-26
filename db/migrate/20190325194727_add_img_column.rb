class AddImgColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :img, :string
    add_column :cars, :img, :string
    add_column :jobs, :img, :string
  end
end
